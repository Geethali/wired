<html>
 <head>
 </head>
 
 <body>
 <?php
 session_start();
 
 
 if ( isset( $_SESSION['user_id'] ) ) {
	 
	 echo "welcome, ". $_SESSION['user_id'];
} else {
    // Redirect them to the login page
    echo "not welcome";
}
 
 ?>
 </body>
</html>