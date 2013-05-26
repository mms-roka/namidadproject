<?php if (! defined('BASEPATH')) exit('No direct script access');



    /**
    * Editor page
    * loads and instantiates pagination class
    */


    class Audio extends CI_Controller { 
    
        
        public $query_id;
        public $limit = 10;
        public $redirect_url;
        //public $editableFields = array('author','gender','title','theme','language','country','age','is_authorised');
            
       
        public $editableFields = array(
                                        '1:1'=> array('author','title','age','is_authorised'),
                                        '1:m'=> array('gender','language','country'),
                                        'm:n'=> array('theme')
                                       );
   
        
        function __construct()  { 
            parent::__construct();
            
            $this->load->library('session');
            $this->load->library('authentication');
            $this->authentication->isEditor();
            
            
            $this->load->library('pagination');
            $this->load->helper('form');
            $this->load->model('editor/audio_model');
            $this->load->helper('cookie');
            
        }
        
        
        public function display($query_id = 0, $sort_by = 'id', $sort_order = 'desc', $offset = 0 ) {
                      
            $query_array = $this->_getQueryArray($query_id);

            // displaying form
            $data = $this->_getFormOptions();
            $data['fields'] = $this->_getFileds();
                                    
            // search id 
            $data['query_id'] = $query_id;
            
            // redirect url
            $this->redirect_url = base_url().'editor/audio/display';
            $data['redirect_url'] = $this->redirect_url;
            // query result for: 
            $results = $this->audio_model->readDb( $query_array, $sort_by, $sort_order, $this->limit, $offset);
            
            
            //print_r($results);
            // sorting
            $data['sort_order'] = $sort_order;
            $data['sort_by'] = $sort_by;
                     
            // counts
            $data['num_rows'] = $results['num_rows']; // all in DB
            $data['num_rows_selected'] = $results['num_rows_selected'];// all found matches (no limit/offset restrictions)
            
            // voices entries
            $data['audio'] = $results['rows'];
            
             // pagination          
            $data['pagination'] = $this->_pagination($query_id, $sort_by, $sort_order, $data['num_rows_selected'], $this->limit);

            //echo $query_id;
            $data['editableFields'] = $this->editableFields;
            
            
            // add this to your controller - AJAX requests by non-codeigniter-widget requires these parameters:
            $data['csrf_hash'] = $this->security->get_csrf_hash();
            $data['csrf_name'] = $this->security->get_csrf_token_name();
          
            $this->load->view('editor/audio_view', $data);
        }
         
        
        
        
        public function _getQueryArray($query_id) {
            
            
           // from where does the request come from? $query_id = 0 = POST, $query_id = 1 = GET   
           if($query_id == 0) {
              $this->session->unset_userdata('query_array');
              $query_id = 1;


                $query_array = array (
                    'id'            => $this->input->post('id',TRUE),            
                    'author'          => $this->input->post('author',TRUE),         
                    'title'         => $this->input->post('title',TRUE),         
                    'created'      => $this->input->post('created',TRUE),      
                    'language' => $this->input->post('language',TRUE), 
                    'country'  => $this->input->post('country',TRUE),   
                    'period'    => $this->input->post('period',TRUE),    
                    'isauthorised' => $this->input->post('isauthorised',TRUE),
                    'age'        => $this->input->post('age',TRUE)
                    );
                
               
              
           } elseif($query_id == 1) {
                          
               if(!empty($_COOKIE['namidasearchquery'])) {
                   
                   $search_querry_array = explode("&", urldecode($_COOKIE['namidasearchquery']));
                   
                   foreach($search_querry_array as $keyvaluepair) {
              
                       $keyvalue_splitted = explode('=', $keyvaluepair);
                       $query_array[$keyvalue_splitted[0]] = html_entity_decode($keyvalue_splitted[1]);
                                       
                   } 
                   
                   $query_array['created'] = '';
                           
               } else { 
                   $query_array = array (
                    'id'            => $this->input->post('id',TRUE),            
                    'author'          => $this->input->post('author',TRUE),         
                    'title'         => $this->input->post('title',TRUE),         
                    'created'      => $this->input->post('created',TRUE),      
                    'language' => $this->input->post('language',TRUE), 
                    'country'  => $this->input->post('country',TRUE),   
                    'period'    => $this->input->post('period',TRUE),    
                    'isauthorised' => $this->input->post('isauthorised',TRUE),
                    'age'        => $this->input->post('age',TRUE)
                    );
                   
               }
           
           }
       
           return $query_array;
            
        }
        
        
        public function search() {

            
            $this->display(1, $sort_by = 'id', $sort_order = 'desc', $offset = 0);
        }
        
        
        
        // JEDITABLE:
        public function saveEditable() {
                        
            $keyArraySplitted = preg_split('/_(?!.*_)/', $this->input->post('id', TRUE));
            $data['fieldname'] = $keyArraySplitted[0];
            $data['id'] = $keyArraySplitted[1];
          
            if(in_array($data['fieldname'], $this->editableFields['1:m'])) {
                
                $id = $this->audio_model->getIDByName($data['fieldname'], $this->input->post('value', TRUE));
        
                $data['value'] = $id;
                $entity = '1:m';
                
                $this->audio_model->updateRecord($data,$entity);
                $returnvalue = $this->input->post('value', TRUE);
              
            }  else if(in_array($data['fieldname'], $this->editableFields['m:n'])) {
                
                $this->audio_model->deleteCrossTableEntries($data['id']); 
            
                foreach($this->input->post('value', TRUE) as $themename ) {
                    $theme_ids_array[] = $this->audio_model->getIDByName($data['fieldname'], $themename);
                }
                
                $this->audio_model->insertIntoCrosstable($theme_ids_array, $data['id']);
                $returnvalue = implode(', ',$this->input->post('value', TRUE)); 
                            
            } else {
                
               $returnvalue = $this->input->post('value', TRUE);
               $data['value'] = $returnvalue;
               $entity = '1:1';
               $this->audio_model->updateRecord($data,$entity);
                 
            }
                      
            echo $returnvalue;
                   
        }

        
        public function getSelectionValues() {
            
            $class = $_GET['id'];
            $keyArraySplitted = explode('_', $class);
         
            $data['tablename'] = $keyArraySplitted[0];
            $resultValue = $this->audio_model->getJSONNames(  $data['tablename']);
            echo(json_encode($resultValue)); 
           
        }      

        
        public function activation_handler($fieldname,$id=0,$data_value = '0') {
            //Inverse value for toggling   
            $data_value = (string)(abs($data_value-1));

                if($this->audio_model->updateEntry('audio',$fieldname,$id,$data_value)) {
                   //echo $data_value;
                   echo '0';             
                }
      }
               
        private function _getFormOptions() {
            
            $data['language_option']      = $this->audio_model->getOptions('language');
            $data['country_option']       = $this->audio_model->getOptions('country');
            //$data['is_authorized_option'] = $this->audio_model->getOptionsAuthorized('audio');
            
            return $data;
        }
        
        
        
        private function _getFileds() {
            
            $fields = array(
                'id'            => 'nr',
                'audio'         => 'audio',
                'theme'         => 'theme',
                'title'         => 'title',
                'language'      => 'language',
                'country'       => 'country',
                'author'        => 'author',
                'gender'        => 'gender',
                'age'           => 'age',
                'created'       => 'created',
                'is_authorised' => 'active'
            );
            
             
            return $fields;
        }
        
        
        
        
        private function _pagination($query_id, $sort_by, $sort_order, $total_rows, $limit) {
            
            $config = array();
          
            $config['base_url']       = site_url("editor/audio/display/$query_id/$sort_by/$sort_order");
            $config['total_rows']     = $total_rows;
            $config['per_page']       = $limit;
            $config['num_links']      = 6;
            $config['uri_segment']    = 7;
            $config['first_link']     = FALSE;
            $config['last_link']      = FALSE; 
            $config['full_tag_open']  = '<ul class="pagination">';
            $config['full_tag_close'] = '</ul>';
            $config['next_tag_open']  = '<li class="pagination_next">';
            $config['next_tag_close'] = '</li>';
            $config['prev_tag_open']  = '<li class="pagination_previous">';
            $config['prev_tag_close'] = '</li>';
            $config['cur_tag_open']   = '<li class="pagination_current"><span>';
            $config['cur_tag_close']  = '</span></li>';                
            $config['num_tag_open']   = '<li class="pagination_digit">';
            $config['num_tag_close']  = '</li>';
            
            $this->pagination->initialize($config); 
            $pagination = $this->pagination->create_links();
            return $pagination;                
        }

    }




/* End of file audio.php */
/* Location: ./application/controllers/editor/audio.php */
