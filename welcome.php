<?php
// Initialize the session
 
session_start();
//$login_tym = date('Y-m-d H:i:s');

 
// If session variable is not set it will redirect to login page
if(!isset($_SESSION['username']) || empty($_SESSION['username'])){
  header("location: login.php");
  exit;
}
else{
   echo  "<h1> Bonjour  Mr ".$_SESSION['username']." </h1>"; 
   // Destroy the session.
 
   echo "<br><a href='logout.php'>Logout</a>";
   
}
/*if( !isset( $_SESSION['username'] ) || (time() - $_SESSION['created_at']) > 10)  
{
    
    session_destroy();
    header("Location:login.php");

}*/
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Bonjour</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
    
</head>
<body>
     
</body>
</html>