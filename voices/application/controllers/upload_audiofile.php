<?php if (! defined('BASEPATH')) exit('No direct script access');



    /**
    * displays the audio recorder (flash swf) 
    * 
    */


    class Upload_audiofile extends CI_Controller { 
    
        function __construct()  { 
            parent::__construct();
            
            // we love sessions: 
            // we both need: codeigniter and native session (which will be stored as a tempory file in order 
            // to eliminated homeless audio files in the temporary order - those audio files will be named according 
            // to the temporary session id
            $this->load->library('phpsession'); 
            $this->load->library('session');
        }
             
        function index() {
    
            // this variable will be assigned with value if user tries to submit form without having recorded  
            $userMessage = $this->session->userdata('userMessage');
            
            // delete this session with user message
            $this->session->unset_userdata('userMessage');

			// initiate native session id which will be used for temporary audio name too
            session_regenerate_id();
            $session_id = session_id();
            $this->session->set_userdata(array('phpsessionID'=>$session_id));
            
            // unset this cookie to initiate new act of recording
            $this->session->unset_userdata('fromUploadForm');
            
            
            $data = array(
				'session_id' => $session_id,
                'projectPath'=> $this->config->item('base_url'),
                'userMessage'=>  $userMessage
		);
            
            $this->load->view('upload_audiofile_view',$data);            
       
        }
     }         
        

/* End of file upload_audiofile.php */
/* Location: ./application/controllers/upload_audiofile.php */
