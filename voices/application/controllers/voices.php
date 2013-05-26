<?php if (! defined('BASEPATH')) exit('No direct script access');



    /**
    * receives audio data from the model passes them to the view
    */


    class Voices extends CI_Controller { 
    
        // Limitation of voices:
        protected $limit = 350;
        
        function __construct()  { 
            parent::__construct();
            
            $this->load->model('voices_model');
        }
        
    	public function index() {
               
           $data['audio'] = $this->voices_model->getAudio($this->limit);
           $this->load->view('voices_view', $data);

       }

   }
   
   
/* End of file voices.php */
/* Location: ./application/controllers/voices.php */