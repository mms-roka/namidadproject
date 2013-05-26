<!DOCTYPE html>

<html lang="en"> 

<head>
    <meta charset="utf-8">
      
    <meta property="og:title" content="Hear the voice from <?php echo $audio_backgroundinfo["author"]; ?> in the Namidad Project"/>
    <meta property="og:type" content="website"/>
    <meta property="og:url" content="<?php echo site_url(); ?>extract/display/<?php echo $audio_backgroundinfo["id"]; ?>"/>      
    <meta property="og:image" content=" <?php echo base_url(); ?>src/namida_fb.png"/>

    <meta property="og:site_name" content="Voices // Namidad Project"/>
    <!--<meta property="fb:admins" content=""/>-->
    <meta property="og:description" content="This project reflects people's voice on generating electrical current"/>
      
    <title>upload your voice</title>
    <link rel="stylesheet" href="<?php echo site_url(); ?>css/voices.css"> 
    <link rel="stylesheet" href="<?php echo site_url(); ?>css/font.css">
    <link rel="Shortcut Icon" type="image/ico" href="<?php echo base_url(); ?>src/favicon.png"> 
    
    
    <link rel="stylesheet" href="<?php echo site_url(); ?>assets/player/build/mediaelementplayer.css">
    <script type="text/javascript" src="<?php echo site_url(); ?>js/jquery_1_8_1.js"></script>

    <script type="text/javascript" src="<?php echo site_url(); ?>assets/player/build/mediaelement-and-player.min.js"></script>
    <script type="text/javascript">
        <!--
            $(document).ready(function(){
                $('audio').mediaelementplayer({
                    audioWidth: 300,
                    audioHeight: 30,
                    startVolume: 0.8,
                    enableAutosize: true,
                    features: ['playpause','progress','volume'],
                    pauseOtherPlayers: true,
                    success: function (mediaElement, domObject) {                   
                       $('.mejs-time-current, .mejs-horizontal-volume-current').html('<span class="handler"></span>');
                
                    }                  
                });  
            });
        //-->
    </script>
  
</head>


<body id="extract">

        <?php echo site_url(); ?>
    <?php echo base_url(); ?>
     <?php echo base_url('voices'); ?>
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
            <h2>your voice has been uploaded</h2>
            <p>Thank you for submitting your voice. Share your voice with others below!</p>
            <p class="" lang="ja">あなたの声をお寄せいただきありがとうございます。以下に他の人とあ なたの声を共有して下さい!</p>
        </div><!-- END .recorder fixed-width -->
        
        <div>
            
            <dl class="fixed-width">
                <?php

                    foreach ($audio as $identifier => $value) {
                   
                            echo '<dt>' . $identifier . '</dt><dd>'. $value .'</dd>';
                        
                    }
                ?>
            </dl>
            
            
            <?php                                                                                 
                echo '<div class="player">
                        <audio controls="controls" preload="none">
                            <source src="' . site_url() . 'audio/' . $audio_backgroundinfo['name'] . '" type="audio/mp3" />
                            Your browser does not support the audio element.
                        </audio>
                </div>';
         
            ?>
          
            <ul id="socialpanel">
                <li><a target="_blank" href="#" onclick="window.open('http://www.facebook.com/sharer.php?u=<?php echo site_url(); ?>extract/display/<?php echo $audio_backgroundinfo["id"]; ?>&amp;t=Hear the voice from <?php echo $audio_backgroundinfo["author"]; ?> in the Namidad Project', 'facebook', 'width=500,height=400', 'no');return false;" >Facebook</a></li>
                <li><a target="_blank" href="#" onclick="window.open('http://twitter.com/intent/tweet?text=Hear the voice from <?php echo $audio_backgroundinfo["author"]; ?> in the Namidad Project on &url=<?php echo site_url(); ?>extract/display/<?php echo $audio_backgroundinfo["id"]; ?>&lang=de','twitter');return false;">Twitter</a></li>
            </ul>
            
            
            

        </div><!-- END .recorder fixed-width -->

    </div><!-- END .fixed-left fixed-content -->
        
    <div class="scroll-area">
        <!-- force Scrollbar -->
    </div><!-- END .scroll-area -->
            
</body>
</body>
