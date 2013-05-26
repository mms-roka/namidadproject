<!DOCTYPE html>

<html lang="en"> 

<head>
    <meta charset="utf-8">
    <title>voices login</title>
    <link rel="stylesheet" href="<?php echo site_url(); ?>css/voices.css"> 
    <link rel="stylesheet" href="<?php echo site_url(); ?>css/font.css">
    <link rel="Shortcut Icon" type="image/ico" href="<?php echo base_url(); ?>src/favicon.png"> 
    
</head>


<body id="upload">
        
        
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

    
    <div class="fixed-left fixed-content">
        <h2>Login</h2>
        
        <div class="fixed-width">
            
            <?php
                echo form_open('login') . PHP_EOL;
                
                        echo '<fieldset class="fixed-width">
                                <ul>
                                    <li>
                                         <label for="username">username</label>
                                         <input type="text" name="username" id="username" value="' . set_value("username", "") . '" autofocus="" tabindex="1"> 
                                     </li>
                                    <li>
                                         <label for="password">password</label>
                                         <input type="password" name="password" id="password" value="' . set_value("password", "") . '" tabindex="2"> 
                                     </li>
                                </ul>
                            </fieldset>';

                        echo form_submit('submit', 'login') . PHP_EOL;

                echo form_close() . PHP_EOL;
            ?>
        </div><!-- END .fixed-width -->


        <div class="fixed-width">
            
            
            <ul class="form-validation">
                <?php 

                    if (isset($NoPageAccess) and $NoPageAccess != '') {
                        echo $NoPageAccess;
                    }

                    echo validation_errors('<li class="error">', '</li>') 
                ?>
            </ul>
            

        </div><!-- END .fixed-width -->
        

    </div><!-- END .fixed-left fixed-content fixed-width   -->
    
    <div class="scroll-area">
        <!-- force Scrollbar -->
    </div><!-- END .scroll-area -->

</body>
</html>