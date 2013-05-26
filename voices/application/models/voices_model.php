<?php if (! defined('BASEPATH')) exit('No direct script access');



    /**
    * gets the audio data from the database
    */


    class Voices_model extends CI_Model { 
    
    
        function __construct()  { 
            parent::__construct();
        }

        
        public function getAudio($limit) {
            
            $this->db->select('css, genderAll, height, language, author, gender_ja, gender_en, age, country, title, min, name, theme ');
            $this->db->from('voices_audio_view');
            $this->db->limit($limit);
            $results = $this->db->get()->result(); 

            foreach ($results as &$result) {    
                
                if ($result->theme) {
                    $result->theme = explode(',', $result->theme);
                }
            }
            
            return $results;
        }
        
    }




/* End of file voices_model.php */
/* Location: ./application/model/voices_model.php */ ?>