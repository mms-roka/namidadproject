<?php if (! defined('BASEPATH')) exit('No direct script access');



    /**
    * processes the user input, logs them in
    * using global_xss_filtering and sess_encrypt_cookie
    * apends a key "isEditor with the value "true" to the session cookie
    */ 



    class Login extends CI_Controller { 
    
    
        function __construct()  { 
            parent::__construct();

            $this->load->library('session');
            $this->load->library('form_validation');
            $this->load->library('audiofile_remover');
            $this->load->helper('form');
            $this->load->model('login_model');
        }
        
        
        
        function index() {
            
            $this->form_validation->set_rules('username','username','required|trim');
            $this->form_validation->set_rules('password','password','required|trim|callback_verifyUser');
            
            if ($this->form_validation->run() != false) {
                   
       
                        $this->audiofile_remover->removingDeadAudioFiles();      

                
                if(!$this->audiofile_remover->removingDeadAudioFiles()) {       
                    $data['errorMsgRemovingFiles'] = 'The audiotemp directory could not be cleaned. Please contact your web developper.';
                } else {
                     redirect('editor/audio/display');
                }
                
               
            }
            
            //$data['NoPageAccess'] = '';    
            $this->load->view('login_view');
        }
        
        
        
        public function verifyUser() {
            
            $username = $this->input->post('username');
            $password = $this->input->post('password');
            
          
            
            // extract($_POST);
            
            // check if the person has an account
            // returns a opject width the user credentials or false
            $result = $this->login_model->verifyUser($username, $password);
            
            if ($result) {
               $this->session->set_userdata('isEditor', true);
          
                            
            } else {
               $this->session->set_userdata('NoPageAccess', true);
               $this->form_validation->set_message('verifyUser', 'something went wrong, try again');
               return false;
            }
    	}
    }




/* End of file login.php */
/* Location: ./application/controllers/login.php */