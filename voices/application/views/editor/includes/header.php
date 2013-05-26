
<!DOCTYPE html>

<html lang="en"> 

<head>
    <meta charset="utf-8">
    <title>admin for <?php echo $current  ?> - namida</title>
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
        
        $('.edit:not([id^="is_authorised"])').editable('<?php echo base_url(); ?>editor/<?php echo $current  ?>/saveEditable', { 
                type      : "text",
                cancel    : 'Cancel',
                submit    : 'OK',
                select    : "true",
                indicator : '<img src="<?php echo base_url(); ?>src/indicator.gif">',
                submitdata : {<?php echo $csrf_name; ?>: '<?php echo $csrf_hash; ?>'},
                tooltip   : 'Click to edit...',
                callback : function(value, settings) {
                    if(value=='error'){alert('Technical problem - please try again or contact your web developper.')} 
                }
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
               url:      '<?php echo base_url(); ?>editor/<?php echo $current  ?>/activation_handler/'+table+'/'+id+'/'+data_value,
               type:    "POST",
               success: function(new_value) {                 
                     
                        if(new_value.length != -1) {
                            $element.attr({'data-value'   : new_value });
                            (new_value == 0) ? a="not " : a="";
                             $element.find('img').attr({'src'   : '<?php echo base_url() ?>src/is_authorised_'+new_value+'.png',
                                                        'alt':'This entry is '+a +'active. Click to change.',
                                                        'title':'This entry is '+a+'active. Click to change.'
                                                        });                       
                        }else {                          
                            alert("Technical problem - please contact your web developper - error: "+new_value);
                        }
                }
            }); // END ajax call     
        } // END function aendere status     
            
      
   })

</script>
        
    
    
</head>

<body>

    <div class="container <?php echo $current; ?>">