<html>
 <head>
 
 </head>
 
 
 <body>
 <?php
 session_start();
 echo "You are currently logged in as " . $_SESSION['user_id'] ."<br/>";
 session_destroy();
 echo "You have successfully logged off.";
 ?>
 </body>

</html>