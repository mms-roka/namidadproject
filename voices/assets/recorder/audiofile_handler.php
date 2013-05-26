<?php 

$sessiondID = $_GET['sessionID'];
$filename = "../../audiotemp/".$sessiondID .".mp3"; 


if(isset($_GET['do']) && 'save' == $_GET['do'] ) {

$fp = fopen( $filename, 'wb' );
fwrite( $fp, $GLOBALS[ 'HTTP_RAW_POST_DATA' ] );
fclose( $fp );
}







if(isset($_GET['do']) && 'delete' == $_GET['do'] ) {


	if (file_exists($filename)) {
	   // yes the file does exist 
	   unlink($filename);
	}

}




?>