<?php if (! defined('BASEPATH')) exit('No direct script access');



    /**
    * logout
    */


    class Logout extends CI_Controller { 
    
    
        function __construct()  { 
            parent::__construct();
            
            $this->load->library('session');
        }
        
        function index() {
            // $this->session->set_userdata('isEditor', false); 
            $this->session->unset_userdata('isEditor');
            $this->session->set_flashdata( 'msg', '<p class="msg">you have been logged out</p>');
            // $this->session->sess_destroy();
            $this->load->view('logout_view');
            
        }

    }




/* End of file logout.php */
/* Location: ./application/controllers/logout.php */