<?php if (! defined('BASEPATH')) exit('No direct script access');



    /**
    * 
    */


    class Editor_model extends CI_Model { 
    
    
        function __construct()  { 
            parent::__construct();
        }

        
        public function insertRecord($tableName, $newRecord) {
            $insert = $this->db->insert($tableName, $newRecord);
            return $insert;
        }
        
        
        public function displayTable($tableName, $sortField, $sortOrder) {
            $rows = $this->db->order_by($sortField, $sortOrder)
                             ->get($tableName)
                             ->result();
            return $rows;
        }

        
        public function isUniqueDB($tableName, $unique, $fields ) {
            $query = $this->db->where_in($fields, $unique)
                                ->get($tableName);
            return ($query->num_rows > 0) ? TRUE : FALSE;
        }
      
            public function updateRecord($table, $updateRecord) {
            $data = array(
                        $updateRecord['fieldname'] => $updateRecord['value']
                     );

            $this->db->where('id', $updateRecord['id']);
            $this->db->update($table, $data);                       


            if($this->db->conn_id->errno == 0) { 
                return true;
            } else {
                return false;    
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




/* End of file Editor_model.php */
/* Location: ./application/model/editor_model.php */