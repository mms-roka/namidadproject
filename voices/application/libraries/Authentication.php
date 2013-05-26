<?php if (! defined('BASEPATH')) exit('No direct script access');



    /**
    * Authentication
    */


    class Authentication { 

        protected $CI;


        public function __construct()  { 
            $this->CI =& get_instance();
        }
        

        public function isEditor() {
            $isEditor = $this->CI->session->userdata('isEditor');
            $noPageAccess = $this->CI->session->userdata('noPageAccess');

            // checks access to this page
            if (!isset($isEditor) || $isEditor != true) {
                // $data['loginAccess'] = 'you have no permisson to access this page, logg in';
                redirect('login');
            }
        }
    }
    



/* End of file authentication.php */
/* Location: ./application/libraries/authentication.php */