<!DOCTYPE html>
<html>
<head></head>
<body>

<?php
session_start();

$password = $_POST["password"];

$connection = new mysqli("localhost", "root", "", "wired");
if ($connection->connect_error){ die("Connection failed : " . $connection->connect_error );}

else {
echo "Connection Successful <br/>";

$sql_string = "SELECT * FROM wired.admin";
$match = false;
$result = mysqli_query($connection, $sql_string);

 while ($row = mysqli_fetch_assoc($result)) {
    
			 if (($row['adminID'] == $_POST['username']) & ($row['adminPassword'] == $_POST['password'])){
				 $match = true;
			 }
			 
 }//while
 
 if ($match == false){
	 echo "<br/>";
	 echo "Login Denied";
 }//if
 
 else {
	 echo "<br/>";
	 echo "Login Successful. Welcome, ". $_POST['username']."<br/>";
	 $_SESSION['user_id'] = $_POST['username'];
	 echo "<br/><a href='admin_view.php'>view products</a> <br/>";
	  echo "<br/><a href='logoff.php'>log off</a> <br/>";
 }//else

}

?>

</body>

</html>