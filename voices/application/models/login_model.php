<?php if (! defined('BASEPATH')) exit('No direct script access');



    /**
    * post input check: username and password
    */


    class Login_model extends CI_Model { 
    
    
        function __construct()  { 
            parent::__construct();
        }
        
        public function verifyUser($username, $password) {            
            
        // echo sha1('review'); die();
            
            $query = $this
                        ->db
                        ->where('username', $username)
                        ->where('password', sha1($password))
                        ->where('is_authorised', '1')
                        ->limit(1)
                        ->get('editor');
                         
            if ($query->num_rows > 0) {
                return $query->row();                
            }
            
            return false;
        }
    }




/* End of file login_model.php */
/* Location: ./application/model/login_model.php */