<?php if (! defined('BASEPATH')) exit('No direct script access');



    /**
    *  search
    */


    class Search extends CI_Controller { 
    
    
        function __construct()  { 
            parent::__construct();
            
            $this->load->model('search_model');
            $this->load->helper('form');
        }
        
        
        public function index(){
           
            $data = $this->_searchResults();
            // echo '<pre>';
            // print_r($data); 
            // echo '</pre>';
      
            $data['genders']   = $this->search_model->getGender();
            $data['age']       = $this->search_model->getAge();
            $data['languages'] = $this->search_model->getLanguage();
            $data['countries'] = $this->search_model->getCountries();
            $data['themes']    = $this->search_model->getThemes();
            
            $this->load->view('search_view', $data);
        }
        
        
        private function _searchResults() {
            $aQueryFields = array();

            $this->input->post('gender') !== false    
            and $aQueryFields['gender_en']   = $this->input->post('gender');
            
            $this->input->post('age') !== false 
            and $aQueryFields['age_scale']      = $this->input->post('age');
            
            $this->input->post('language') !== false 
            and $aQueryFields['language_id'] = $this->input->post('language');
            
            $this->input->post('country') !== false 
            and $aQueryFields['country_id']  = $this->input->post('country');
            
            $this->input->post('theme') !== false 
            and $aQueryFields['theme_id']    = $this->input->post('theme');
            var_dump($this->input->post());
            
            $data['searchResults'] = $this->search_model->getSearchResults($aQueryFields);
            
            return $data;
            
            // $this->load->view('search_result_view', $data);
            
        }

    }




/* End of file search.php */
/* Location: ./application/model/search.php */ ?>
