<?php if (! defined('BASEPATH')) exit('No direct script access');


    /**
    * Audio Upload
    * uploads mp3 and writs the audio data to the db
    */
    


    class Extract_model extends CI_Model { 
        
        
        public static $add_jap_text = array('author'=>' // <span lang="ja">名前</span>','gender'=>' // <span lang="ja">性別</span>', 'age'=>' // <span lang="ja">年齢</span>', 'minutes'=>' // <span lang="ja">分</span>', 'language'=>' // <span lang="ja">言語</span>', 'country'=>' // <span lang="ja">国</span>','theme'=>' // <span lang="ja">テーマ別</span>','title'=>' // <span lang="ja">タイトル</span>');
 
 
        function __construct()  { 
            parent::__construct();

        }
        
        
        public function getExtract($id,$table) {

            $querystring = 'author, name, gender_en AS gender, age, title, min AS minutes, language, country, theme';

            $this->db->select($querystring);
            $this->db->from('audio_view');
        
            $this->db->limit(1);

            $this->db->where('id', $id); 

            $query = $this->db->get();

            if ($query->num_rows() > 0)
            {
               $row = $query->row();                
            
               foreach($row as $key => $value) {

                   foreach(self::$add_jap_text as $dbfieldname => $jap_suffix) {
                       if($dbfieldname==$key) {
                            $resultArray[$key.$jap_suffix] = $value;
                       }                                              
                   } 
                  
               }            
            }
               
            return($resultArray);

        }

         public function getExtractForBackgroundInfo($id,$table) {

            $querystring = 'id, name, author, theme';

            $this->db->select($querystring);
            $this->db->from('audio_view');
        
            $this->db->limit(1);

            $this->db->where('id', $id); 

            $query = $this->db->get();

            if ($query->num_rows() > 0)
            {
               $row = $query->row();                
            
               foreach($row as $key => $value) {
                   $resultArray[$key] = $value;
               }            
            }
         
            return($resultArray);

        }
       
        
    }




/* End of file Upload.php */
/* Location: ./application/model/Upload.php */