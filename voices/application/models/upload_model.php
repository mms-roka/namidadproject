<?php if (! defined('BASEPATH')) exit('No direct script access');


    /**
    * Audio Upload
    * uploads mp3 and writs the audio data to the db
    */


    class Upload_model extends CI_Model { 

        function __construct()  { 
            parent::__construct();
            
        }
        
        
        
        // SELECT DATA TO DISPLAY FORM:
        public function getOptions($table) {
            
            $rows = $this->db->select('name, id')
                ->from($table)
                ->get()->result();
            
            // set empty default option field value
            // not only to look pretty but 
            // for the validation class to run the rule required
            $options = array('' => '');
            
            foreach ($rows as $row) {
                $options[$row->name] = $row->name;
                 //$options[$row->id] = $row->id;
            }
            
            return $options;
        }
        
 
       public function getOptionsTheme($table) {
            
            $rows = $this->db->select('japanese, id, english')
                ->from($table)
                ->get()->result();
            
            // set empty default option field value
            // not only to look pretty but 
            // for the validation class to run the rule required
            $options = array('' => '--- Please select one or more themes ---');
            
            foreach ($rows as $row) {
                $options[$row->id] = $row->english.'// <span class="japfont">'.$row->japanese. '</span>';
            }
            
            return $options;
        }
 

        public function saveToDB($newRecord, $table) {

            $is_insert = $this->db->insert($table, $newRecord);
            return $is_insert;
        }     
        
        
       public function getIDfromTableRow($newRequest, $table) {
            
           $query = $this->db->get_where($table, $newRequest, 1, 0);
            
            if ($query->num_rows() > 0)
            {
            $row = $query->row(); 
                return $row->id;
            }
        }  
        

 
       public function saveToCrossTable($id_from_record,$table) {

           foreach($this->input->post('theme_name') as $value) {
              if($value == '') {continue;}            
               $theme_and_audio_id = array('theme_id'=>$value,'audio_id'=>$id_from_record);
               
               if(!$this->upload_model->saveToDB($theme_and_audio_id,$table)){
                   return false;
               }
           }
           return true;     
        }
        
        public function deleteVoice($newAudioName) {
           
            $query = $this->db->get_where('audio', array('name' => $newAudioName), 1, 0);
           
            if ($query->num_rows() > 0)
            {
                $row = $query->row(); 

                $this->db->delete('audio', array('id' => $row->id)); 
                $this->db->delete('theme_to_audio', array('audio_id' => $row->id)); 

                return true;
            }        
           return false;     
       }
        
        
       public function getSelectedThemes($table) {
            
            $ids = array(); 
            foreach($this->input->post('theme_name') as $id) {      
                $ids[] = $id;
            }

            $this->db->select('english');
            $this->db->or_where_in('id', $ids);
            $query = $this->db->get($table);
 
            $result = '';
            $counter = 0;
            
            foreach ($query->result() as $row)
            {
                 $counter ++;
                 if($counter <$query->num_rows()) {
                      $result .= $row->english.', ';
                 }else {
                      $result .= $row->english;
                 }     
            }
            return $result;
       }
       
       public function getExtractForEmail($id) {
            $querystring = 'author, gender.english AS gender, age, title, minutes,language.name AS language, country.name AS country, GROUP_CONCAT('.$this->db->dbprefix.'theme.english SEPARATOR "&#44 " ) AS theme';

            $this->db->select($querystring);
            $this->db->from('audio');
            $this->db->join('gender', 'audio.gender_id = gender.id');
            $this->db->join('language', 'audio.language_id = language.id');
            $this->db->join('country', 'audio.country_id = country.id');
            $this->db->join('theme_to_audio', 'audio.id = theme_to_audio.audio_id');
            $this->db->join('theme', 'theme.id = theme_to_audio.theme_id');
            $this->db->limit(1);

            $this->db->where('audio.id', $id); 

            $query = $this->db->get();

            if ($query->num_rows() > 0)
            {
               $row = $query->row();                
            }
            return $query->result_object[0];          
        }
        
        public function getThemeCheckbox($table) {
            $results = $this->db->get($table)->result();          
            return $results;
        }
      
    }




/* End of file Upload.php */
/* Location: ./application/model/Upload.php */