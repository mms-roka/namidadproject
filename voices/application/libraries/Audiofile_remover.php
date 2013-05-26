<?php if (! defined('BASEPATH')) exit('No direct script access');



    /**
    * Authentication
    */


    class Audiofile_remover { 

        protected $CI;


        public function __construct()  { 
            $this->CI =& get_instance();
        }
        

           // Garbage collection for dead audio files:         
        public function removingDeadAudioFiles() {
                       
            // Load necesseary variables
            $sessionIDdir = $this->CI->config->item('session_temp_directory');
            $audiotempdirectory = $this->CI->config->item('audio_temp_directory'); 
            $sessionIDarray = array();
            
            // Populate array with current session_id:
            if (is_dir($sessionIDdir)) {
  		if ($dh = opendir($sessionIDdir)) {
        
                    while (($file = readdir($dh)) !== false) {
                                if (  (substr($file,0,1) != '.') && (substr($file,0,5) == 'sess_')    ){
                                    $sessionIDarray[] = substr($file,5);     
                                }
   					
                    } // Ende while
           
                    closedir($dh);
                } else {return false;}// Ende opend_dir
            
                    
            } else {return false;}// Ende is_dir
            
     
            // Delete audio files if they are not in the session_id array 
            // The user is likely to fill in our user form right now (Step2) after having recorded the audio file (Step1):
            if (is_dir($audiotempdirectory)) {
                    if ($dh = opendir($audiotempdirectory)) {

                        while (($file = readdir($dh)) !== false) {

                                    if (  (substr($file,0,1) != '.') && (substr($file,-4) == '.mp3')    ){
   
                                        if(!in_array(substr($file,0,-4), $sessionIDarray)) {
                                             unlink($audiotempdirectory.$file);
                                            //echo ("deleted:".$file.' because it is NOT in session array:<br>');                                        
                                        } 
                                    }

                        } // Ende while
                        closedir($dh);
       
                    } else {return false;}// Ende opend_dir
            } else {return false;}// Ende is_dir
            
           return true;
         
        }
        
        
        
  
        
        
        
        
    }
    



/* End of file authentication.php */
/* Location: ./application/libraries/authentication.php */