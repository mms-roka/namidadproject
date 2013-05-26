<!DOCTYPE html>

<html lang="en"> 

<head>
    <meta charset="utf-8">
    <title>upload your voice</title>
    <link rel="stylesheet" href="<?php echo site_url(); ?>css/voices.css"> 
    <link rel="stylesheet" href="<?php echo site_url(); ?>css/font.css">
    <link rel="Shortcut Icon" type="image/ico" href="<?php echo base_url(); ?>src/favicon.png"> 
    <script type="text/javascript" src="<?php echo site_url(); ?>assets/recorder/VOCWordToYourMp3.js"></script>
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
            <p>Please record your message below. The time limit for each voice recording is two minutes.</p>
            <p class="" lang="ja">以下にメッセージを録音してください。各音声録音の制限時間は 2 分です</p>
        </div>
      
            <div class="recorder fixed-width">

                <p><?php echo $userMessage;  ?></p>
                <script type="text/javascript"> 
                    AC_FL_RunContent(
                    'codebase', 'http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,0,0',
                    'width', '600',
                    'height', '200',
                    'src', 'assets/recorder/VOCWordToYourMp3',
                    'quality', 'high',
                    'pluginspage', 'http://www.adobe.com/go/getflashplayer',
                    'align', 'middle',
                    'play', 'true',
                    'loop', 'true',
                    'scale', 'showall',
                    'wmode', 'window',
                    'devicefont', 'false',
                    'id', 'VOCWordToYourMp3',
                    'bgcolor', '#FFFFFF',
                    'name', 'VOCWordToYourMp3',
                    'menu', 'true',
                    'allowFullScreen', 'false',
                    'allowScriptAccess','sameDomain',
                    'movie', 'assets/recorder/VOCWordToYourMp3',
                    'FlashVars','sessionID=<?php echo $session_id;?>&projectPath=<?php echo $projectPath;?>',
                    'salign', 't'
                    ); //end AC code
                </script>
                <noscript>
                    <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,0,0" width="600" height="200" id="VOCWordToYourMp3" align="middle">
                    <param name="allowScriptAccess" value="sameDomain" />
                    <param name="allowFullScreen" value="false" />
                    <param name="movie" value="assets/recorder/VOCWordToYourMp3.swf" /><param name="quality" value="high" />  <param name="FlashVars" value="sessionID=<?php echo $session_id;?>&projectPath=<?php echo $projectPath;?>" /><param name="bgcolor" value="#ffffff" />	<embed src="assets/recorder/VOCWordToYourMp3.swf" quality="high" bgcolor="#ffffff" width="600" height="200" name="VOCWordToYourMp3" align="middle" allowScriptAccess="sameDomain" allowFullScreen="false" type="application/x-shockwave-flash" pluginspage="http://www.adobe.com/go/getflashplayer" FlashVars="sessionID=<?php echo session_id();?>&projectPath=<?php echo $projectPath;?>" />
                    </object>
                </noscript>
            </div><!-- END .recorder  fixed-width-->

    </div><!-- END .fixed-left fixed-content   -->
    
    <div class="scroll-area">
        <!-- force Scrollbar -->
    </div><!-- END .scroll-area -->

</body>
</html> 



