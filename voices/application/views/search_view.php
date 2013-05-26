<!DOCTYPE html>

<html lang="en"> 

<head>
    <meta charset="utf-8">
    <title>voices search</title>
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
     -->
    </script>

</head>


<body id="search">
        
        
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
                <h3 class="current">
                    <a href="<?php echo base_url('search'); ?>">search<span>//</span></a>
                    <a lang="ja" href="<?php echo base_url('search'); ?>"> 検索</a>
                </h3>
            </nav>
    </div><!-- END .search-link fixed-left -->
    


    <!-- form
    ================================================== -->

    <div class="fixed-left fixed-content">
        <div class="fixed-width">

            <div class="ajax">

            </div><!-- END .ajax -->



        <div class="search-form">
           <?php 

            $attributes = array('class' => 'search', 'id' => 'searchForm'); 

                echo form_open('search', $attributes); 
                    echo '<fieldset class="fixed-width">

                        <ul>
                            <li>
                                <label for="gender">gender // <span lang="ja"> 性別</span></label>';
                                    foreach ($genders as $key => $value) {
                                        echo '<input type="checkbox" id="gender' . $key . '" name="gender[]" value="' . $key . '">
                                                <label for="gender' . $key . '">' . $value . '</label>';
                                    }
                    echo '</li>
                            <li>
                                <label for="age">age // <span lang="ja">年齢</span></label>';
                                    foreach ($age as $key => $value) {
                                        echo '<input type="checkbox" id="age' . $key . '" name="age[]" value="' . $key . '">
                                                <label for="age' . $key . '">' . $value . '</label>';
                                    }
                    echo '</li>
                            <li>
                                <label for="language">language // <span lang"ja"> 言語</span></label>';
                                    foreach ($languages as $key => $value) {
                                         echo '<input type="checkbox" id="language' . $key . '" name="language[]" value="' . $key . '">
                                                 <label for="language' . $key . '">' . $value . '</label>';
                                     }
                    echo '</li>
                            <li>
                                <label for="theme">themes // <span lang="ja">テーマ別</span></label>
                                    <ul class="search-theme">';


                                    foreach ($themes as $key => $value) {
                                         echo '<li><input type="checkbox" id="theme' . $key . '" name="theme[]" value="' . $key . '">
                                                 <label for="theme' . $key . '">' . $value . '</label></li>';
                                     }


                            echo '</ul>
                            </li>

                            <li>
                                <input type="submit" name="submit" value="search" id="search-submit">
                            </li>
                        </ul>
                    </fieldset>
                </form>';
            ?>
            </div><!-- END .search-form -->







        </div><!-- END .fixed-width -->
    </div><!-- END .fixed-left fixed-content fixed-width   -->



    <!-- search result
    ================================================== -->


    <div class="scroll-area">
        <div class="content">

            <?php
                foreach ($searchResults as $row) {

                    echo '<div class="search-box ' . $row->css . '">';

                        echo '<input type="checkbox" id="toggle' . $row->id . '">
                                <label for="toggle' . $row->id . '">' . $row->title . '</label>';

                        echo '<div class="search-box-content">';

                        echo '<ul class="info">
                                <li>' . $row->author . '</li>
                                <li>' . $row->genderAll . ' // ' . $row->age . '</li>
                                <li>' . $row->language . '</li>
                                <li>' . $row->country . '</li>
                                <li>' . $row->title . '</li>
                                <li>' . $row->min . '</li>
                            </ul>';

                        echo '<div class="player">
                                <audio controls="controls">
                                    <source src="' . site_url() . 'audio/' . $row->name . '" type="audio/mp3" />
                                    Your browser does not support the audio element.
                                </audio>
                        </div>';

                        echo '<ul class="theme">
                                <li>Theme//<sapn lang="ja"> テーマ別</sapn> </li>';

                                    if ($row->theme) {
                                        foreach ($row->theme as $theme) {
                                            echo '<li>' . $theme . '</li>';
                                        }
                                    }
                        echo '</ul>

                        </div>
                    </div>';      
                }
            ?>

        </div><!-- END .content -->
    </div><!-- END scroll-area -->

     <!-- <script type="application/x-javascript" src="<?php echo site_url(); ?>js/jquery_1_8_1.js"></script>
     <script type="application/x-javascript" src="<?php echo site_url(); ?>js/search.js"></script> -->

</body>
</html>