<html>
    <body>
        
        <p>new voice item uploaded</p>
        <p>if you have any questions, refere to attributes below</p>
        
        <ul>
            <?php // print_r($audio); 
                
                    foreach ($audio as $identifier => $value) {
                        echo '<li>' . $identifier . ': '. $value .'</li>';
                    }
            ?>

        </ul>
        
         <a class="inblock" href="#">voices</a>
         <a class="inblock" href="#">namida project</a>
         <p>the team</p>

    </body>
</html>


<style type='text/css'>

    body{
        font-family: "Helvetia, sans-serif";
    }
    
    ul {
        list-style:none;
        padding:0;
    }
    a {
      display: inline;
    
      color: #d1131c;
      text-decoration: none;
      outline: none;
    }
    a:hover {
      color: #d1131c;
    }
    .inblock {
        display:block;
    }
</style>

