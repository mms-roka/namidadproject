<?php if (! defined('BASEPATH')) exit('No direct script access');



    /**
    * audio edit
    */


    class Audio_model extends CI_Model { 
    
        // Only these field names can be sorted : 
        public static $sort_columns = array('id','audio', 'theme', 'title', 'language', 'country', 'author','gender','age','created','is_authorised');
               
        function __construct()  { 
            parent::__construct();
        }
        
             
        public function readDb($query_array, $sort_by, $sort_order, $limit, $offset) {
            
            // setting up sort array
            $sort_order = ($sort_order == 'desc') ? 'desc' : 'asc';  
            $sort_by = (in_array($sort_by, self::$sort_columns)) ? $sort_by : 'id'; 
            
    
            
            // get results according to selection, with limit and offset:
            $queryresult = $this->_getResults($query_array, $sort_by, $sort_order, $limit, $offset);
            $results['rows'] =  $queryresult;
        
            // get all results according to selection:
            $queryresult = $this->_getResults($query_array, $sort_by, $sort_order, '', '');
            $results['num_rows_selected'] = count( $queryresult); 
            
            
            // count query (false unescape for COUNT)
            $query = $this->db->select('COUNT(*) as count', false)
                        ->from('audio');
            $tmp = $query->get()->result();
            $results['num_rows'] = $tmp[0]->count;
                
            return $results;
            
        }
        
        
        public function updateRecord($updateRecord,$entity) {
            
            switch ($entity) {
                case '1:1':
                    $data = array(
                        $updateRecord['fieldname'] => $updateRecord['value']
                     );

                    $this->db->where('id', $updateRecord['id']);
                    $this->db->update('audio', $data); 
                    
                break;
                
                case '1:m':
                     $data = array(
                        $updateRecord['fieldname'].'_id' => $updateRecord['value']
                     );

                    $this->db->where('id', $updateRecord['id']);
                    $this->db->update('audio', $data);                       
                   
                break;
        
            } // END switch
              
        }
       
        
        public function deleteCrossTableEntries($audioid) {
            
             $this->db->delete('theme_to_audio', array('audio_id' => $audioid)); 
     
        }
    
        
        private function _getResults($query_array, $sort_by, $sort_order, $limit, $offset) {             
              // result query
              $query = $this->db->select('audio.id AS id, author, title, audio.name AS audio,GROUP_CONCAT('.$this->db->dbprefix.'theme.english SEPARATOR "&#44 " ) AS theme, gender.english AS gender, age, language.name AS language, country.name AS country, is_authorised, DATE_FORMAT( created, "%Y-%m-%d  ") AS created', FALSE)
                      
                        ->from('audio')
                        ->join('language', 'audio.language_id = language.id','left') 
                        ->join('country', 'audio.country_id = country.id','left')
                        ->join('gender', 'audio.gender_id = gender.id','left')
                        ->join('theme_to_audio', 'audio.id = theme_to_audio.audio_id','left')
                        ->join('theme', 'theme.id = theme_to_audio.theme_id')
                        ->group_by('id');
                
                       
                if($limit!== '' && $offset!=='') {
                     $this->db->limit($limit, $offset);
                }
                                           
                $this->db->order_by($sort_by, $sort_order);

                
                if (strlen($query_array['id'])) {
                    $query->like('audio.id', $query_array['id']);
                }

                if (strlen($query_array['title'])) {
                    $query->like('title', $query_array['title']);
                }

                if (strlen($query_array['author'])) {
                    $query->like('author', $query_array['author']);
                }

                if (strlen($query_array['language'])) {
                    $query->where('language.name', $query_array['language']);
                }

                if (strlen($query_array['country'])) {               
                    $query->where('country.name', $query_array['country']);
                }

                if (strlen($query_array['created'])) {
                    $query->where('created', $query_array['created']);
                }

                if (strlen($query_array['isauthorised'])) {
                    $query->where('is_authorised', $query_array['isauthorised']);
                }

                if (strlen($query_array['period']) && strlen($query_array['age'])) {

                    switch ($query_array['period']) {
                        case 'gt':
                        $operand = '>';
                            break;
                        case 'eq':
                            $operand = '=';
                            break;
                        case 'lt':
                        $operand = '<';
                            break;
                    }

                $this->db->where('age '.$operand,$query_array['age'] ); 
                
                }               
          
                return $query->get()->result();              
        }
    
        
        public function getOptions($table) {
            
            $rows = $this->db->select('name, id')
                ->from($table)
                ->get()->result();
            
            // set empty default option in field value
            $options = array('' => '');
            
            foreach ($rows as $row) {
                $options[$row->name] = $row->name;
            }
            
            return $options;
        }
  
        
        public function getOptionsAuthorized($table) {
            
            $rows = $this->db->select('is_authorised, id')
                ->from($table)
                ->get()->result();
            
            // set empty default option in field value
            $options = array('' => '');
            
            foreach ($rows as $row) {
                $options[$row->is_authorised] = $row->is_authorised;
            }
            
            return $options;
        }
        
           
        // JEDITABLE FUNCTION:
        public function getJSONNames($table) {
                      
            if($table=='gender'||$table=='theme'){
                $fieldname = 'english';
                
                }else {$fieldname = 'name';}
          
            $rows = $this->db->select($fieldname)
                ->from($table)
                ->get()->result();
            
            // set empty default option in field value
            $options = array();
            
            foreach ($rows as $row) {
                $options[$row->$fieldname] = $row->$fieldname;
            }
            
            return $options;
        }
   
        
        public function getIDByName($table, $value) {
            
            $fieldname = 'name';
            if($table=='gender'||$table=='theme'){$fieldname = 'english';}

             
                      
            $query = $this->db->get_where($table, array($fieldname=>$value), 1, 0);
            
            if ($query->num_rows() > 0)
            {
            $row = $query->row(); 
                return $row->id;
            }
                     
        }
     
        
        public function insertIntoCrosstable($theme_ids_array, $audioid) {
           
            foreach($theme_ids_array as $themeid) {
                 $this->db->insert('theme_to_audio', array('audio_id'=>$audioid,'theme_id'=>$themeid)); 
                
            }
        }
        
        public function updateEntry($table,$fieldname,$id,$data_value){

                        $this->db->set($fieldname, $data_value);
                        $this->db->where('id', $id);
                        $this->db->update($table);
               
                        if ($this->db->conn_id->errno == 0){       
                            return true;
                        }else { 
                            return false;    
                        }
            
        }

        
               
       
    }




/* End of file audio.php */
/* Location: ./application/model/editor/audio.php */