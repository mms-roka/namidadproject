<!DOCTYPE html>

<html lang="en"> 

<head>
    <meta charset="utf-8">
    <title>upload your voice</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="<?php echo site_url(); ?>css/voices.css"> 
    <link rel="stylesheet" href="<?php echo site_url(); ?>css/font.css">
    <link rel="Shortcut Icon" type="image/ico" href="<?php echo base_url(); ?>src/favicon.png"> 
</head>


<body class="upload">
    
    <!-- header and inks
    ================================================== -->


    <div class="fixed-left navigation">

            <div class="logo fixed-width">
                <h1>
                    <a class="ir" href="<?php echo base_url('voices'); ?>">namida project</a>
                    voices<span>//</span>namida project
                </h1>
            </div><!-- END .logo -->

            <nav>
                <h3>
                    <a href="<?php echo base_url('about'); ?>">about voices<span>//</span></a>
                    <a  lang="ja" href="<?php echo base_url('about'); ?>">ヴォイセズについて</a>
                </h3>
                <h3 class="current">
                    <a href="<?php echo base_url('upload'); ?>">upload your voice<span>//</span></a>
                    <a lang="ja" href="<?php echo base_url('upload'); ?>">メッセージをアップロード</a>
                </h3>
            </nav>

    </div><!-- END .navigation fixed-left -->



    <div class="search-link fixed-left">
            <nav>
                <h3>
                    <a href="<?php echo base_url('search'); ?>">search<span>//</span></a>
                    <a lang="ja" href="<?php echo base_url('search'); ?>"> 検索</a>
                </h3>
            </nav>
    </div><!-- END .search-link fixed-left -->
    

        

        
    <!-- content
    ================================================== -->
    
    
    <div class="fixed-left fixed-content">
        
        <div class="instruction  fixed-width">
            <h2>upload your voice</h2>
            <p>Thank you submitting your VOICE. Please fill out the form below.</p>
            <p lang="ja"><span>VOICE </span>にメッセージを発して下さりありがとうございます。下記のフォームにご協力ください</p>
            

    <ul class="form-error-msg">
        <?php   $errorstring = validation_errors(); 
        
                $errorarray =  array_unique(array_slice(explode('%%',$errorstring),1,-1) )   ;
        
                foreach($errorarray as $errormsg) {                  
                    echo '<li>'.$errormsg.'</li>';
                }         
        ?>
    </ul>

    
     </div><!-- END .instruction  fixed-width -->
            
        
    <div class="upload-form">
         <?php
                            
            echo form_open('upload/'.$length);
            
                echo '<fieldset class="fixed-width">
                    <ul>';
                    echo "<li>";
                    echo form_label('name // <span lang="ja">名前</span>', 'author') . PHP_EOL;
                    echo form_input('author', set_value('author'), 'id="author" tabindex="3" autofocus=""') . PHP_EOL;           
                    echo "</li>";
                    
                    echo "<li>";                         
                    echo form_label('GENDER // <span lang="ja">性別</span>', 'age') . PHP_EOL;
                    
                    $data_radiobutton_m_value = FALSE;
                    $data_radiobutton_f_value = FALSE;
                 
                    if($this->input->post('gender_english')=='F') {
                                        
                      $data_radiobutton_m_value = FALSE;
                      $data_radiobutton_f_value = TRUE;
                    }elseif($this->input->post('gender_english')=='M') {
                            
                      $data_radiobutton_m_value = TRUE;
                      $data_radiobutton_f_value = FALSE;
                    }
                       
                    $data_radiobutton_m = array(
                        'name'        => 'gender_english',
                        'id'          => 'genderM',
                        'value'       => '2',
                        'checked'     => $data_radiobutton_m_value,
                        'tabindex'       => '4',
                        );
                    echo form_radio($data_radiobutton_m);
                    echo '<label for="genderM">M // <span lang="ja">男</span></label>';
                    
                    $_radiobutton_f = array(
                        'name'        => 'gender_english',
                        'id'          => 'genderF',
                        'value'       => '1',
                        'checked'     => $data_radiobutton_f_value,
                        'tabindex'       => '5',
                        );
                    echo form_radio($_radiobutton_f);                         
                    echo '<label for="genderF">F // <span lang="ja">女</span></label>';
                    echo "</li>";                          
          
                    echo "<li>";                           
                    echo form_label('AGE // <span lang="ja">年齢</span>', 'age') . PHP_EOL;
                    echo form_input('age', set_value('age'), 'id="authorAge" tabindex="6"') . PHP_EOL;
                    echo "</li>";                          
          
                    echo "<li>";                           
                    echo form_label('LANGUAGE // <span lang="ja">言語</span>', 'language') . PHP_EOL;
                    echo form_dropdown('language_name', $language_option, $this->input->post('language_name'), 'tabindex="7" id="language"') . PHP_EOL;
                    echo "</li>";                          
          
                    echo "<li>";    
                    echo form_label('COUNTRY // <span lang="ja">国</span>', 'country') . PHP_EOL;
                    echo form_dropdown('country_name', $country_option, $this->input->post('country_name'), 'tabindex="8" id="country"') . PHP_EOL;
                    echo "</li>"; 
                    
              
                echo '</ul></fieldset>';
                echo '<fieldset class="fixed-width"><ul>';
                    
                    echo "<li>";   
                    echo form_label('TITLE // <span lang="ja">タイトル</span>', 'title');
                    echo form_input('title', set_value('title'), 'id="title" tabindex="9"') . PHP_EOL;
                    echo "</li>";                          
                              
                    echo '<li>';
                    echo form_label('THEME // <span lang="ja">テーマ別</span>', 'theme_name') . PHP_EOL;

                         	echo '
                                    <ul class="upload-theme">';
              
                                            $i = 10;
                                            foreach ($theme as $row) {
                                                
                                                echo '<li><input tabindex="'.$i. '" type="checkbox" id="' . $row->id . '" name="theme_name[]" value="' . $row->id . '" ' . set_checkbox("' . $row->id . '", '') . '>
                                                <label for="' . $row->id . '">' . $row->english . ' //<span lang="ja">' . $row->japanese . '</span tabindex="' . $i . '"></label></li>';
                                                $i++;
                                            }
                
                                        
                             echo  '</ul>';
                    	echo '</li>';

            	echo "</ul>";
                     
				echo form_submit('SUBMIT', 'submit', 'tabindex="'.$i.'"') . PHP_EOL;
   
				echo '</fieldset>';
				echo form_close();

         ?>  
                           
        </div><!-- END .upload-form -->

    </div><!-- END .fixed-left fixed-content fixed-width   --> 
        
        
    <div class="scroll-area">
        <!-- force Scrollbar -->
    </div><!-- END .scroll-area -->

</body>
</html>