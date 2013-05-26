<!DOCTYPE html>

<html lang="en"> 

<head>
    <meta charset="utf-8">
    <title>logout</title>
    <link rel="stylesheet" href="<?php echo site_url(); ?>css/voices.css"> 
    <link rel="stylesheet" href="<?php echo site_url(); ?>css/font.css">
    <link rel="Shortcut Icon" type="image/ico" href="<?php echo base_url(); ?>src/favicon.png"> 
    

</head>


<body>
        
        
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
        <h2>you are logged out</h2>
        <p><a href="<?php echo base_url(); ?>login">login again</a></p>

    </div><!-- END .fixed-left fixed-content fixed-width   -->
    
    <div class="scroll-area">
        <!-- force Scrollbar -->
    </div><!-- END .scroll-area -->


</body>
</html>
                

                
  
