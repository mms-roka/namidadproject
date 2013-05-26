<?php if (! defined('BASEPATH')) exit('No direct script access');



    /**
    * Intro
    */


    class About extends CI_Controller { 
    
    
        function __construct()  { 
            parent::__construct();
            
            $this->load->helper('form');
        }
        
        function index() {

            $data = 'nothing';
            $this->load->view('about_view');
        }

    }




/* End of file intro.php */
/* Location: ./application/controllers/intro.php */