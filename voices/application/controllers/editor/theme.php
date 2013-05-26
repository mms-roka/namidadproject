<?php if (! defined('BASEPATH')) exit('No direct script access');



    /**
    * checks access to this page
    * creates new editor 
    */

    require_once APPPATH . 'controllers/editor/editorpage_controller.php';
    
    class Theme extends Editorpage_controller { 
        
        protected $current = '';
        protected $uniqueField    = '';
    
    
        function __construct()  { 
            parent::__construct($this->current);
            
            $this->current = strtolower(__CLASS__);
            $this->uniqueField = 'english';
        }
        
        public function index() {
            $this->renderSimple('id', 'asc');
        }
        
        public function add() {
            $this->saveToDB();
        }

        protected function getUserData() { 
            $newRecord = array(
                'english'  => $this->input->post('english'),
                'japanese' => $this->input->post('japanese')
            );
            
            return $newRecord;
        }
        
        protected function setRules() { 
            $this->form_validation->set_rules('english', 'english', 'required|trim|callback_isUnique');
            $this->form_validation->set_rules('japanese', 'japanese', 'required|trim');
            $this->validationMessage();
        }
        
    }




/* End of file theme.php */
/* Location: ./application/controllers/editor.theme.php */
