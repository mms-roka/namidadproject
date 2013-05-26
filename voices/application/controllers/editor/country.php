<?php if (! defined('BASEPATH')) exit('No direct script access');



    /**
    * checks access to this page
    * adds new country 
    */

    require_once APPPATH . 'controllers/editor/editorpage_controller.php';
    
    class Country extends Editorpage_controller { 
        
        protected $current = '';
        protected $tableName      = '';
        protected $uniqueField    = '';
    
    
        function __construct()  { 
            parent::__construct($this->current);
            
            
                        

            
            $this->current = $this->tableName = strtolower(__CLASS__);
            $this->uniqueField = 'name';
        }
        
        public function index() {
            $this->renderSimple('id', 'asc');
        }
                
        
        public function add() {
            $this->saveToDB();
        }

        protected function getUserData() { 
            $newRecord = array(
                'name' => $this->input->post('name')
            );
            
            return $newRecord;
        }
        
        protected function setRules() { 
            $this->form_validation->set_rules('name', 'name', 'required|trim|callback_isUnique');
            $this->validationMessage();
        }
        
    }




/* End of file country.php */
/* Location: ./application/controllers/editor.country.php */
