<?php

if (!defined('BASEPATH'))
    exit('No direct script access');

/**
 * displays the upload form
 * runs the form validation
 * transfers the audio file from temp directory to final one and relabes the file
 * retrieves a ticket number for labeling the audio file 
 * writes the author data into the database
 * sends a email to the editor confirming the new voice recording and a link to display it
 */


class NoFileToTransferException extends Exception {}

class Upload extends CI_Controller {

    private $id_from_table_sessiondata;
    private $newRecord;
    private $id_from_record;
    private $tempAudioName;
    private $newAudioName;
    private $length;
    
    function __construct() {
        parent::__construct();
        $this->load->library('phpsession');
        $this->load->library('session');
        $this->load->library('email');
        $this->load->library('form_validation');
        $this->load->helper('form');
        $this->load->helper('security');
        $this->load->model('upload_model');
    }

    function index($length) {
     
        $this->length = $this->security->sanitize_filename($length);
        // This form is only valid 
        // if audio files has been created (controller upload_audiofile) and its GET-Parameter length for audio file length
        if (!isset($this->length) || 
            1 != preg_match("/^[[:digit:]]+$/", $this->length) || 
            !session_id()||$this->session->userdata('fromUploadForm')==true ||
            $this->session->userdata('phpsessionID') !== session_id()) {
                redirect('/upload_audiofile', 'refresh');
        }

        // $this->_uploadConfig();
        $this->_setRules();
        $data = $this->_displayForm();
        $data['error'] = array('error' => '');
        $data['length'] = $this->length;

        // displays the upload form, until author input and file validation passes
        if ($this->form_validation->run() == false) {
            $this->load->view('upload_view', $data);
        } else {

            // Insert Post-Data into DB:
            $this->_safeToDB();
            
           // Transfer audio file and rename it:
            $this->_triggerFileTransfer();

            
            // Send E-Mail and if ok, redirect to single voice view (extract/display):
            if($this->_triggerEMailExecution()) {
                $this->session->set_userdata(array('fromUploadForm'=>true));
                redirect('/extract/display/'.$this->id_from_record, 'refresh');        
            } else {
                $this->load->view('404', $data);
            }
        }
    }

    private function _getAudioLength() {

        // Populate audio length from GET-Parameter:      
        $minutes = 0;
        $seconds = '00';

        $lengthInMilliseconds = $this->length;
        $secondstotal = ($lengthInMilliseconds / 1000);
        $minutes = floor($secondstotal / 60);

        $seconds = floor($secondstotal - ($minutes * 60));
        if ($seconds < 10) {
            $seconds = '0' . $seconds;
        }
        $audiolength = $minutes . ':' . $seconds;
        return $audiolength;
    }

    
    private function _triggerFileTransfer() {
        
        try 
        { 
            $this->_transferAudioFile($this->tempAudioName,$this->newAudioName);
        } 

        /* Fehlerbehandlung */
        catch (NoFileToTransferException $exception) 
        { 
            $this->session->set_userdata(array('userMessage'=>'Please record a new audio file first'));
            redirect('/upload_audiofile', 'refresh');
        }
        
    }
    
    private function _safeToDB() {

        // STEP ONE: TICKETING SYSTEM FOR RETRIEVING AN UNIQUE ID ($id_from_table_sessiondata):             
        $this->newRecord = array(
            'sessionid' => session_id() . '_' . time()
        );


        if ($this->upload_model->saveToDB($this->newRecord,'sessiondata')) {            
            $this->id_from_table_sessiondata = $this->upload_model->getIDfromTableRow($this->newRecord, 'sessiondata');
        }

        // NEXT STEP: RETRIEVING AND COMPUTING TEMPORARY AND DEFINITIVE (USING UNIQUE VARIABLE $id_from_table_sessiondata) AUDIO FILE NAMES:
        $this->tempAudioName = session_id().".mp3";
        $this->newAudioName = $this->id_from_table_sessiondata . ".mp3";

        // NEXT STEP: POPULATING RECORD OBJECT:
        $audiolength = $this->_getAudioLength();
        $this->newRecord = $this->_getUploadData($audiolength,$this->newAudioName );


        // NEXT STEP: INSERTING RECORD IN DATABASE:  
        $this->upload_model->saveToDB($this->newRecord, 'audio');
        
            
        // PREPARING IN ORDER TO FEED CROSS TABLE CROSS TABLE VOICES_THEME_TO_AUDIO:

        // NEXT STEP:  RETRIEVING ID OF THIS RECORD FROM VOICE TABLE
        $audioname = array('name'=>$this->newAudioName);
        $this->id_from_record = $this->upload_model->getIDfromTableRow($audioname, 'audio');

        // NEXT STEP: INSERTING INTO CROSS TABLE VOICES_THEME_TO_AUDIO
        if($this->upload_model->saveToCrossTable($this->id_from_record,'theme_to_audio')) {
            return true;
        }

        return false;
    }

     private function _triggerEMailExecution() { 
        // NEXT STEP: TRIGGER E-MAIL:     
        $data = array();
        $data['audio'] = $this->upload_model->getExtractForEmail($this->id_from_record);
        $data['audio']->link = '<a href="'.base_url().'extract/display/'.$this->id_from_record.'" target="_blank">'.base_url().'extract/display/'.$this->id_from_record.'</a>';

        $message = $this->load->view('editor_email', $data, TRUE);
        if($this->_sendEmail($message, $data)) {
            return true;
        }
        return false;                 
     }
    
    
    private function _transferAudioFile($tempAudioName,$newAudioName) {
        
        // if file relabelling and transfer has not been executed, throw an Exception 
        // this expetion handling requires the constant 'ENVIRONMENT' to be set on production
        if (copy($this->config->item('audio_temp_directory')  . $tempAudioName, $this->config->item('audio_directory')  . $newAudioName)) {
            unlink($this->config->item('audio_temp_directory') .  $tempAudioName);
            return true;
        } else {
            if($this->upload_model->deleteVoice($newAudioName)){               
                throw new NoFileToTransferException();   
            }        
        }
      
    }

    private function _displayForm() {

        $data['language_option'] = $this->upload_model->getOptions('language');
        $data['country_option'] = $this->upload_model->getOptions('country');
        $data['theme_option'] = $this->upload_model->getOptionsTheme('theme');
        $data['theme'] = $this->upload_model->getThemeCheckbox('theme');

        return $data;
    }

    private function _setRules() {

        $this->form_validation->set_rules('author', 'author', 'trim|required');
        $this->form_validation->set_rules('gender_english[]', 'gender', 'required');
        $this->form_validation->set_rules('age', 'age', 'trim|required|is_natural|max_length[3]');
        $this->form_validation->set_rules('language_name[]', 'language', 'required');
        $this->form_validation->set_rules('country_name[]', 'country', 'required');
        $this->form_validation->set_rules('title', 'title', 'trim|required|max_length[45]');
        $this->form_validation->set_rules('theme_name[]', 'theme', 'trim|required');
       
       	$this->form_validation->set_message('required', 'please fill in all fields <span lang="ja"> // 全ての項目にお答えください</span>');
        $this->form_validation->set_message('is_natural', 'for age, please use numerals <span lang="ja"> // 年齢は何歳かをお答えください。</span>');
        $this->form_validation->set_message('max_length', 'please limit you title to 45 letters/spaces<span lang="ja"> //タイトルは45文字以内でお願い致します</span>');
	
        $this->form_validation->set_error_delimiters('', '%%');
    }

    private function _getUploadData($audiolength, $newAudioName) {

        $language_array = array('name' => $this->input->post('language_name'));
        $country_array = array('name' => $this->input->post('country_name'));
        
        $language_id = $this->upload_model->getIDfromTableRow($language_array,'language');
        $country_id = $this->upload_model->getIDfromTableRow($country_array,'country');
        $newRecord = array(
            'name' => $newAudioName,
            'author' => $this->input->post('author'),
            'gender_id' => $this->input->post('gender_english'),
            'age' => $this->input->post('age'),
            
            'language_id' =>  $language_id,
            'country_id' => $country_id,
            'title' => $this->input->post('title'),
            'minutes' => $audiolength
           
        );

        return $newRecord;
    }

    
    private function _sendEmail($message, $data) {

        $this->email->set_newline("\r\n");
   
        $this->email->from($this->config->item('email_from_onupload'), 'voices');
        $this->email->to($this->config->item('email_to_onupload'));
        $this->email->cc($this->config->item('email_cc_onupload'));
        $this->email->bcc($this->config->item('email_bcc_onupload'));
        
        $this->email->subject('namida - new audio was uploaded');
        
        $this->email->message($message);

       
        
        if ($this->email->send()) {
            return true;
        } else {
            show_error($this->email->print_debugger());
        }
    }

}

/* End of file Uplaod.php */
/* Location: ./application/controllers/Uplaod.php */
