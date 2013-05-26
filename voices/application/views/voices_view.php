<!DOCTYPE html>

<html lang="en"> 

<head>
    <meta charset="utf-8">
    <title>voices</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="<?php echo site_url(); ?>css/voices.css"> 
    <link rel="Shortcut Icon" type="image/ico" href="<?php echo base_url(); ?>src/favicon.png"> 
    <link rel="stylesheet" href="<?php echo site_url(); ?>assets/player/build/mediaelementplayer.css">
    
  
    
</head>


<body id="voices">

        
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
                <h3>
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
        
        <div class="scroll-area">
            <div class="voices-positioner">
            
                    <?php
       
                                      
                        foreach ($audio as $row) {
                    
                            echo '<div class="voices-box animatable">';
                              
                            
                         
                            echo '<div class="search-box ' . $row->css . '">';
                             echo '<ul class="info">
                                        <li>' . $row->author . '</li>
                                        <li>' . $row->genderAll . ' // ' . $row->age . '</li>
                                        <li>' . $row->language . '</li>
                                        <li>' . $row->country . '</li>
                                        <li>' . $row->title . '</li>
                                        <li>' . $row->min . '</li>
                                    </ul>';

                            echo '</div>';
                            
                            
                                echo '<div class="voices-box-content audioLength' . $row->height;
                                echo ($row->language ==  '日本人') ?  ' ja">'  :  ' en">';
                                                              
                                echo '<span class="voices-close"></span>';
                              
                                echo '<div class="player" data-name="'.$row->name.'"></div>';

                                    echo '<ul class="theme">
                                            <li>Theme // <span lang="ja"> テーマ別</span> </li>';

                                                if ($row->theme) {
                                                    foreach ($row->theme as $theme) {
                                                        echo '<li>' . $theme . '</li>';
                                                    }
                                                }
                                    echo '</ul>
                                
                                   
                                </div>

                            </div>' . PHP_EOL;
                        }
                    
            
                    ?>

            </div><!-- END ..voices-positioner -->
        </div><!-- END scroll-area -->


        
          <script type="text/javascript" src="<?php echo site_url(); ?>js/jquery_1_8_1.js"></script>
    <script type="text/javascript" src="<?php echo site_url(); ?>assets/player/build/mediaelement-and-player.min.js"></script> 
    <script type="text/javascript" src="<?php echo site_url(); ?>_js/simplemobile.js"></script> 
   
    <script type="text/javascript">
     
         $(document).ready(function(){
            
             var width_animated = '310px';
             var width_closed = '5px';
             var animation_speed = 500;
             
             var voices_positioner = $('div.voices-positioner');
             var voicesboxes = $('.voices-box',voices_positioner);
         
             voices_positioner.on('click','.voices-box',function(){

                var currentVoicebox = $(this);
                closePreviousVoice(voices_positioner,currentVoicebox);
                animateCurrentVoice(currentVoicebox);
                                        
             }); // END voicesboxes click


             function closePreviousVoice(voices_positioner,currentVoicebox) {
                 // close previous animated voice div: 
                var previousVoice = $('div.animated',voices_positioner);
                previousVoice.not(currentVoicebox).animate({width:width_closed}, animation_speed).removeClass('animated').addClass('animatable');
                previousVoice.not(currentVoicebox).find('.voice-box-infobox').animate({width:width_closed}, animation_speed);
                previousVoice.not(currentVoicebox).find('.info').animate({width:width_closed}, animation_speed,function() {
                    var that = $(this);
                    that.removeClass('show');
                    that.css({'width':width_animated,'top':'0px'});                 
                });
                               
             }
         
             function animateCurrentVoice(currentVoicebox) {

                if(currentVoicebox.width()<50){  
                        
                    var info = currentVoicebox.find('.info');

                    info.addClass('show');
                    currentVoicebox.animate({width:width_animated}, animation_speed);      
                    currentVoicebox.addClass('animated').removeClass('animatable');

                    var info_anim_height = currentVoicebox.find('.voices-box-content').position().top;
                    info.animate({top:info_anim_height},animation_speed);

                    var li_anim_height = currentVoicebox.find('.info li:last').position().top;      
                    currentVoicebox.find('.voices-box-content').animate({paddingTop:li_anim_height},animation_speed);

                    populatePlayer(currentVoicebox);

                    // bind click event on close button:
                    currentVoicebox.find('.voices-close').click(function(){             
                        currentVoicebox.animate({width:width_closed},animation_speed);                  
                        info.animate({top:0}, animation_speed,function() {                        
                            $(this).removeClass('show');
                        });
                    })               
           
                } // END if                       
             }
             
             function populatePlayer(currentVoicebox) {
             
                    // Read audio file name, generate audio tag and populate mediaplayer:
                    // this dom manipulation is needed to accelerating displaying time when site is loaded
                    var audioname = currentVoicebox.find('.player').attr('data-name');
                    currentVoicebox.find('.player').html('<audio controls="controls" class="audiotag" preload="none" src="<?php echo base_url();?>audio/'+audioname+'" >Your user agent does not support the HTML5 Audio element.</audio>');                                 

                    $('audio',currentVoicebox).mediaelementplayer({
                        audioWidth: 300,
                        audioHeight: 30,
                        startVolume: 0.8,
                        enableAutosize: true,
                        features: ['playpause','progress','volume'],
                        pauseOtherPlayers: true,
                        success: function (mediaElement, domObject) {                   
                            $('.mejs-time-current, .mejs-horizontal-volume-current',currentVoicebox).html('<span class="handler"></span>');
                        }                  
                    });         
             }
                       
             // invoking hover and click function for touch screens:
       
                
         }); // END ready
             
     //]]>-->
    </script>
    
</body>
</html>
