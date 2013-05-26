<?php if (! defined('BASEPATH')) exit('No direct script access');



    /**
    * checks access to this page
    * creates new editor 
    */

    require_once APPPATH . 'controllers/editor/editorpage_controller.php';
    
    class Editor extends Editorpage_controller { 
        
        protected $current = '';
        protected $uniqueField    = '';
    
    
        function __construct()  { 
            parent::__construct($this->current);
            
            $this->current = strtolower(__CLASS__);
            $this->uniqueField = 'username';
        }
        
        public function index() {
            $this->renderSimple('id', 'desc');
        }
        
        public function add() {
            $this->saveToDB();
        }

        protected function getUserData() { 
            $newRecord = array(
                'firstname' => $this->input->post('firstname'),
                'lastname'  => $this->input->post('lastname'),
                'username'  => $this->input->post('username'),
                'password'  => sha1($this->input->post('password'))
            );
            return $newRecord;
        }
        
        protected function setRules() { 
            $this->form_validation->set_rules('firstname', 'firstname', 'trim');
            $this->form_validation->set_rules('lastname', 'lastname', 'trim');
            $this->form_validation->set_rules('username', 'username', 'required|trim|callback_isUnique|max_length[90]');
            $this->form_validation->set_rules('password', 'password', 'trim|required');
            
            $this->validationMessage();
        }
        
    }




/* End of file text.php */
/* Location: ./application/controllers/editor.text.php */
