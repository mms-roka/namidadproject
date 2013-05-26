<?php if (! defined('BASEPATH')) exit('No direct script access');



    /**
    * page controller
    */


    class Editorpage_controller extends CI_Controller { 
        
        protected $headerData = array();
        protected $tableData = array();
    
    
        function __construct($current = '')  { 
            parent::__construct();
            
            $this->load->library('session');
            $this->load->library('authentication');
            $this->authentication->isEditor();
            
            $this->load->model('editor/editor_model');
            $this->load->library('form_validation');
            $this->load->helper('form');
            
            
             // add this to your controller - AJAX requests by non-codeigniter-widget requires these parameters:
            $this->headerData['csrf_hash'] = $this->security->get_csrf_hash();
            $this->headerData['csrf_name'] = $this->security->get_csrf_token_name();
            

        }
        
        protected function renderSimple($sortField, $sortOrder) {
            
            $this->headerData['current'] = $this->current;
            $this->tableData['rows'] = $this->editor_model->displayTable($this->current, $sortField, $sortOrder);
            
        
            
            $this->load->view('editor/includes/header', $this->headerData);
            $this->load->view('editor/includes/navigation');
            $this->load->view('editor/' . $this->current . '_view', $this->tableData);
            $this->load->view('editor/includes/footer');
        }
        
        protected function renderWidthAudio() {
            
            $this->headerData['title'] = $this->current;
            
            $this->load->view('editor/includes/header', $this->headerData);
            $this->load->view('editor/includes/navigation');
            $this->load->view('editor/' . $this->current . '_view', $data);
            $this->load->view('editor/includes/footer');
        }
        
        
        protected function saveToDB() {
            
            $this->setRules();
            $newRecord = $this->getUserData();
            $msg = array();

            if ($this->form_validation->run() == FALSE)  {
                $this->index(); 

            } else {

                if ($this->editor_model->insertRecord($this->current, $newRecord)) {  
                    redirect('editor/' . $this->current,'refresh');
                } 
                
                
            }
        }
        
        protected function validationMessage() {
            $this->form_validation->set_message('required', 'fill in the  %s field');
        }
        
        
        public function isUnique() 	{
            $unique = $this->input->post($this->uniqueField);
    	    
    	    if ($this->editor_model->isUniqueDB($this->current, $unique, $this->uniqueField)) {
    		
    			$this->form_validation->set_message('isUnique', '%s already exists');
    			return FALSE;
    			
    		} else 	{
    			return TRUE;
    		}
        }
        
        
      // JEDITABLE:
        public function saveEditable() {
                        
            $keyArraySplitted = preg_split('/_(?!.*_)/', $this->input->post('id', TRUE));
            $data['fieldname'] = $keyArraySplitted[0];
            $data['id'] = $keyArraySplitted[1];
          
            $returnvalue = $this->input->post('value', TRUE);
            $data['value'] = $returnvalue;
           
            $updatecontrol = $this->editor_model->updateRecord($this->current,$data);
     
            if($updatecontrol)  {
                echo $returnvalue;
            } else {                
                echo 'error';
            }                       
        }
        
                
        public function activation_handler($fieldname,$id=0,$data_value = '0') {
            //Inverse value for toggling   
            $data_value = (string)(abs($data_value-1));

                if($this->editor_model->updateEntry($this->current,$fieldname,$id,$data_value)) {
                   echo $data_value;             
                } 
        }

    
    


    }




/* End of file Editorpage_controller.php */
/* Location: ./application/controllers/editorpage_controller.php */