<?php

if (!defined('BASEPATH'))
    exit('No direct script access');

/**
 * displays the upload form
 * runs the form validation
 * uploads the audio file
 * writes the audio data into the database
 * sends a email to the editor confirming the new upload width audio data
 */
class Extract extends CI_Controller {

   
   
    function __construct() {
        parent::__construct();
        
        $this->load->library('session');
        $this->load->model('extract_model');
    }

    function index() {
        
         
    }

    public function display($id) {
        
        // if user comes from upload form and returns to it, we set a session variable to check 
        // in upload form if the user must return to upload audio form (recorder) 
       
        $data['audio'] = $this->extract_model->getExtract($id,'audio');
        $data['audio_backgroundinfo'] = $this->extract_model->getExtractForBackgroundInfo($id,'audio');
        

        $this->load->view('extract_view', $data);
    
            
    }
}

/* End of file Uplaod.php */
/* Location: ./application/controllers/Uplaod.php */
