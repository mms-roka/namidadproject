<?php if (! defined('BASEPATH')) exit('No direct script access');



    /**
    * search
    */


    class Search_model extends CI_Model { 
    
    
        function __construct()  { 
            parent::__construct();
        }
        
        
        public function getGender(){
             $query = $this->db->select('id, english, japanese')
                               ->get('gender');
                               
             $options = array();
                if ($results = $query->result()) {
                    foreach ($results as $option) {
                      $options[$option->english] = $option->english . ' // <span lang="ja">' . $option->japanese . '</span>';
                    }
                    return $options;
                }
        }
        
        
        public function getAge() {
            $options = array( 
                '0-20'  => '0-20 //', 
                "20-40" => "20-40 //", 
                '40-60' => '40-60 //',
                '60-80' => '60-80 //',
                '80+'   => '80+'
            );
            return $options;
        }
        
        
        public function getLanguage() {
            $query = $this->db->select('id, name')
                             ->get('language');

            $options = array();
                if ($results = $query->result()) {
                    foreach ($results as $option) {
                      $options[$option->id] = $option->name . ' //';
                    }
                return $options;
            }
        }
        
        
        
        public function getThemes() {
             $query = $this->db->select('id, english, japanese')
                               ->get('theme');
                               
             $options = array();
                if ($results = $query->result()) {
                    foreach ($results as $option) {
                      $options[$option->id] = $option->english . ' // <span lang="ja">' . $option->japanese . '</span>';
                    }
                    return $options;
                }
        }
        
        
        public function getSearchResults ($aSearchFields = array()) {
            
            if (count($aSearchFields)) {
                foreach ($aSearchFields as $sSearchFieldKey => $aSearchFieldValue) {
                    $this->db->where_in($sSearchFieldKey, $aSearchFieldValue);
                }
            }
            
            $query = $this->db->select('id, genderAll, css height, age_scale, language_id, author, gender_ja, gender_en, age, language, country, title, min, name, theme')
                                ->limit(50)
                                ->get('voices_audio_view');
            
            if ($results = $query->result()) {
                foreach ($results as $result) {    
                     $result->theme = explode(',', $result->theme);
                }
                return $results;
                
            } else { 
                return '<p>no voices could be found <br /><span lang="ja">全く声が見つかりませんでした</span></p>';
            }
            
            
            // $results = $this->db->select('height, age_scale, language_id, author, gender_ja, gender_en, age, language, country, title, min, name, theme')
            //                     ->get('voices_audio_view')
            //                     ->result();
            //                     
            //            
            // 
            // if ($results) {
            //         
            //     foreach ($results as &$result) {    
            // 
            //         if ($result->theme) {
            //             $result->theme = explode(',', $result->theme);
            //         }
            //     }
            //     
            //     return $results;
            //     
            // } else { 
            //     return '<p>no voices could be found <br /><span lang="ja">全く声が見つかりませんでした</span></p>';
            // }
 
            
            // $this->db->select('id, name, author, language_id, language, country_id, country, gender_ja, gender_en, age, age_scale,  title, min, theme_id,  theme');
            // $results = $this->db->get('voices_audio_view')->result_array();
            //             
            // if ($results) {
            //    $aReturn = array();
            //     foreach ($results as $result) {    
            //         $result['theme'] = explode(',', $result['theme']);
            //         $aReturn[] = $result;
            //     }
            //      var_dump($results);exit;
            //     return $aReturn;
            //     
            // } else { 
            //     return '<p>no voices could be found <br /><span lang="ja">全く声が見つかりませんでした</span></p>';
            // }
        }
        
        public function getAudio() { 
           $query =  $this->db->select('language_id, name, author, language, country, gender_ja, gender_en, age, title, min, theme')
                          ->where('id', $this->uri->segment(3))
                          // ->where('id', $id)
                          ->limit(1)
                          ->get('voices_audio_view');
                          
          if ($results = $query->result()) {
              foreach ($results as $result) {    
                   $result->theme = explode(',', $result->theme);
              }
         }
         return $results;
         
     }
        
         
   }




/* End of file search_ajax_model.php */
/* Location: ./application/model/search_ajax_model.php */ ?>