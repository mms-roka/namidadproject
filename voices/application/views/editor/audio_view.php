<!DOCTYPE html>

<html lang="en"> 

<head>
    <meta charset="utf-8">
    <title>admin for audio</title>
    <link rel="stylesheet" href="<?php echo site_url(); ?>css/editor.css"> 
    <link rel="stylesheet" href="<?php echo site_url(); ?>css/font.css">
    
    <link rel="stylesheet" href="<?php echo site_url(); ?>assets/player/build/mediaelementplayer.css">
    <link rel="Shortcut Icon" type="image/ico" href="<?php echo base_url(); ?>src/favicon.png"> 
    <script type="text/javascript" src="<?php echo site_url(); ?>js/jquery_1_8_1.js"></script>
    <script type="text/javascript" src="<?php echo site_url(); ?>js/jquery.jeditable.js"></script>
    <script type="text/javascript" src="<?php echo site_url(); ?>js/jquery.jeditable_multiselectplugin.js"></script>
    <script type="text/javascript" src="<?php echo site_url(); ?>assets/player/build/mediaelement-and-player.min.js"></script>

    <script type="text/javascript">
    
		$(document).ready(function() {
			
			// this cookie acts as selection parameter storages betweend GET and POST requests (search form and pagination)        
			$('form#myform [type=reset]').click(function(e){
				document.cookie = 'namidasearchquery=; expires=Thu, 01-Jan-70 00:00:01 GMT;path=/';
				$(window.location).attr('href', '<?php echo $redirect_url; ?>');  
			})
		
			$('form#myform [type=submit]').click(function(e){
				savingCookie($('form#myform').attr('action'));    
			});
		  
			function savingCookie(path) {
				
				var saving_form_values = $('form#myform [id],form#myform [name="isauthorised"]').serialize();
		   
				saving_form_values = encodeURIComponent(saving_form_values);
				
				var exdate=new Date(); 
				exdate.setDate(exdate.getDate() + 2);
				
				document.cookie = 'namidasearchquery='+escape(saving_form_values)+'; expires='+exdate.toUTCString()+';path=/';          
			}
		  
		  
			var cookie_result =  getCookie('namidasearchquery');
	
			if(cookie_result != undefined){ 
				
				cookie_result = decodeURIComponent(cookie_result);
				var cookie_result = cookie_result.split('&');    
	
				$.each(cookie_result, function(i, val) {
					val = val.split('=');
					if(val[1]!='') {        
						$('#'+val[0]).val(decodeURIComponent(val[1]));
					}
				}); 
			}
	
			function getCookie(c_name)
				{
				var i,x,y,ARRcookies=document.cookie.split(";");
				for (i=0;i<ARRcookies.length;i++)
				{
				x=ARRcookies[i].substr(0,ARRcookies[i].indexOf("="));
				y=ARRcookies[i].substr(ARRcookies[i].indexOf("=")+1);
				x=x.replace(/^\s+|\s+$/g,"");
				if (x==c_name)
					{
					return unescape(y);
					}
				}
			}
			
		 
			// JEDITABLE:
			
			$('.edit:not([id^="is_authorised"])').editable('<?php echo base_url(); ?>editor/audio/saveEditable', { 
				type      : "text",
				cancel    : 'Cancel',
				submit    : 'OK',
				select    : "true",
				indicator : '<img src="<?php echo base_url(); ?>src/indicator.gif">',
				submitdata: {<?php echo $csrf_name; ?>: '<?php echo $csrf_hash; ?>'},
				tooltip   : 'Click to edit...'
			});
			
	
			$(".edit_selection").editable("<?php echo base_url(); ?>editor/audio/saveEditable", { 
				loadurl : '<?php echo base_url(); ?>editor/audio/getSelectionValues',
				type      : "select",
				cancel    : 'Cancel',
				submit    : "OK",
				select    : "true",
				indicator : '<img src="<?php echo base_url(); ?>src/indicator.gif">',
				submitdata: {<?php echo $csrf_name; ?>: '<?php echo $csrf_hash; ?>'},
				tooltip   : 'Click to edit...'
			});
			
	
			$(".edit_multiple_selection").editable("<?php echo base_url(); ?>editor/audio/saveEditable", { 
				loadurl   : '<?php echo base_url(); ?>editor/audio/getSelectionValues',
				type      : "multiselect",
				cancel    : 'Cancel',
				submit    : "OK",
                                size      : "5",
				select    : "true",
				indicator : '<img src="<?php echo base_url(); ?>src/indicator.gif">',
				submitdata: {<?php echo $csrf_name; ?>: '<?php echo $csrf_hash; ?>'},
				tooltip   : 'Click to edit...'        
			}); 
			
			
			var admintable = $('#admintable');
			admintable.on('click','[id^="is_authorised"]',function(){
				 change_authorisation_status($(this));
			});
		
			function change_authorisation_status($element) {
				
				var id = $element.attr('id').match(/[^\_]*$/);
				var table = $element.attr('id').match(/^.*(?=_\d+$)/)
				var data_value = $element.attr('data-value');
				
				$.ajax({
				   url:      '<?php echo base_url(); ?>editor/audio/activation_handler/'+table+'/'+id+'/'+data_value,
				   type:    "POST",
				   success: function(new_value) {                 
							if(new_value.length != -1) {
								$element.attr({'data-value'   : new_value });
								(new_value == 0) ? a="not" : a="";
								 $element.find('img').attr({'src'   : '<?php echo base_url() ?>src/is_authorised_'+new_value+'.png',
															'alt':'This item will '+a +' be published. Click to change.',
															'title':'This item will '+a+' be published. Click to change.'
															});
							  
							}else {                          
								alert("failed"+new_value);
							}
					}
				}); // END ajax call     
			} // END function aendere status     
	
			
			
			 $('#admintable').on('click','.player',function(){
			 
				var playerdiv = $(this);
				playerdiv.css('visibility','hidden');
				var audioname  = playerdiv.attr('data-name');
				playerdiv.html('<audio controls="controls" preload="none" src="<?php echo base_url();?>audio/'+audioname+'" >Your user agent does not support the HTML5 Audio element.</audio>');
		  
					$('audio',playerdiv).mediaelementplayer({
						audioWidth: 200,
						audioHeight: 27,
						startVolume: 0.8,
						enableAutosize: true,
						features: ['playpause','progress','volume'],
						pauseOtherPlayers: true,
						success: function (mediaElement, domObject) {                   
							$('.mejs-time-current, .mejs-horizontal-volume-current').html('<span class="handler"></span>');
								playerdiv.css('visibility','visible');
								mediaElement.load();
								mediaElement.play();
						}                  
					});
			 })
			
			
			$('#isauthorised_icon').click(function(){
				 
			   var hidden_activation_field = $('#isauthorised_icon').prev('input[name="isauthorised"]');
			   var val = hidden_activation_field.val();
			   val = Math.abs(val-1);
			   hidden_activation_field.val(val);
			   $(this).removeClass().addClass('isauthorised_'+val);
			});
	
		   
		   
		}) // End document ready
	   

        </script>

</head>

<body>

    <div class="container">
        
        <!-- navigation
        ================================================== --> 

        <?php
           $this->load->view('editor/includes/navigation')
        ?>

       

        <!-- form
        ================================================== -->

        <div class="content audio_edit">
                    
                   <div class="form-audio">
                <ul>
                    <?php
                        $attributes = array('class' => 'email', 'id' => 'myform');

                        echo form_open('editor/audio/search', $attributes) . '</li>';

                            echo '<li>' . form_label('nr', 'id');
                            echo form_input('id', set_value('id'), 'id="id" tabindex="1"') . '</li>';

                            echo '<li>' . form_label('title', 'title');
                            echo form_input('title', set_value('title'), 'id="title" tabindex="3"') . '</li>';

                            echo '<li>' . form_label('language', 'language_id');
                            echo form_dropdown('language', $language_option, set_value('language'), 'id="language" tabindex="4"') . '</li>';

                            echo '<li>' . form_label('country', 'country');
                            echo form_dropdown('country', $country_option, set_value('country'), 'id="country" tabindex="5"') . '</li>';


                            echo '<li>' . form_label('author', 'author');
                            echo form_input('author', set_value('author'), 'id="author" tabindex="2"') . '</li>';

                            echo '<li>' . form_label('age', 'period');
                            echo form_dropdown('period', array(''=> '','gt'=> '>', 'eq' => '=', 'lt' => '<'),set_value('period'), 'id="period" tabindex="7"');
                            echo form_input('age', set_value('age'), 'id="age"') . '</li>';

                            echo '<li>' . form_label('active', 'isauthorised') . PHP_EOL;                        
                            echo form_hidden('isauthorised', set_value("isauthorised","1"), 'id="isauthorised" tabindex="6"') ;
                            echo '<span id="isauthorised_icon" class="isauthorised_'.set_value('isauthorised','1').'"></span>';
							echo '</li>';

                            echo '<li>' . form_reset('resetform', 'clear all');
                            echo form_submit('action', 'search') . '</li>';

                        echo form_close();
                    ?>
                </ul>
            </div>

         <!-- table
        ================================================== -->


        <div class="paginator_line">
            <?php 
                if (strlen($pagination)) {
                    echo $pagination;
                } 
            ?>
        </div><!-- end #paginator_line -->
      
                <table id="admintable" class="table-audio">
                    <caption>total in database: <?php echo $num_rows ?>  &nbsp;&nbsp; | &nbsp;&nbsp; search results: <?php echo $num_rows_selected ?></caption>
                    <thead>
                        <tr>
                            <?php
                                foreach ($fields as $field_name => $field_display) {
                                    
                                    if ($sort_by == $field_name) {
                                       echo '<th class="' . $sort_order . '" >';
                                    } else {
                                        echo '<th>'; 
                                    }
                                
                                   if(in_array($field_name, Audio_model::$sort_columns)) {
                                       
                                        echo anchor("/editor/audio/display/$query_id/$field_name/".
                                            (($sort_order == 'asc' && $sort_by == $field_name) ? 'desc' : 'asc'),
                                            $field_display);
                                       
                                       } else {
                                           
                                          echo $field_display; 
                                       }
                                                                         
                                        echo '</th>';
                                }
                            ?>
                        </tr>
                    </thead>
                    <tbody>
                        <?php  
                            foreach ($audio as $row) { 
                                echo '<tr> ';
                                    foreach ($fields as $field_name => $field_display) {
                                         
                                        
                                            if(in_array($field_name, $editableFields['1:1'])) {
                                                
                                                if($field_name !== 'is_authorised') {
                                                     $id = 'class="edit pointer" id="'. $field_name.'_'.$row->id.'"';
                                                     echo '<td '.$id.'>' . $row->$field_name . '</td>';
                                                } else {
                                                    
                                                    if($row->$field_name==1) {
                                                        $id = 'class="edit pointer" id="'. $field_name.'_'.$row->id.'" data-value="'.$row->$field_name.'"';
     
                                                          echo  '<td '.$id.'>
                                                                <img src="'.base_url().'src/is_authorised_'.$row->$field_name.'.png" 
                                                                 alt="This item will be published. Click to change." 
                                                                 title="This item will be published. Click to change." 
                                                                 class="status" /></td>';
                                                         
                                                    }else {
                                                           $id = 'class="edit pointer" id="'. $field_name.'_'.$row->id.'"';
                                                         echo  '<td '.$id.'>
                                                                <img src="'.base_url().'src/is_authorised_'.$row->$field_name.'.png" 
                                                                 alt="This item will not be published. Click to change." 
                                                                 title="This item will not be published. Click to change." 
                                                                 class="status" /></td>';                                                  }
                                                }
                                                
                                            } elseif(in_array($field_name, $editableFields['1:m'])) {
                                                
                                                  $id = 'class="edit_selection pointer" id="'. $field_name.'_'.$row->id.'"';
                                                  echo '<td '.$id.'>' . $row->$field_name . '</td>';
                                            } elseif(in_array($field_name, $editableFields['m:n'])) {
                                                
                                                 $id = 'class="edit_multiple_selection pointer" id="'. $field_name.'_'.$row->id.'"';
                                                 echo '<td '.$id.'>' . $row->$field_name . '</td>';
                                            } elseif($field_name=='audio') { 
                                                $id = 'class="playercell"'; 
                                                 echo '<td '.$id.'><div class="player" data-name="'.$row->$field_name.'"></div></td>';
                                         }
                                            
                                            else { 
                                                $id = ''; 
                                                echo '<td '.$id.'>' . $row->$field_name . '</td>'; 
                                            }
                                        
                                            
                                     
                                         
                                         
                                         
                                     }
                                echo '</tr>'; 
                            } 
                        ?>
                    </tbody>
                </table>
                

      
        
        
            </div><!-- END .content -->
         
    </div><!-- END .container -->
 
  
 
  
</body>
