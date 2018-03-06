<?php
//including the database connection file
include_once("../config.php");

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
 
   echo "<br><a id='logout' class='btn btn-primary'  href='logout.php'>Logout</a>";
   
}
 
//fetching data in descending order (lastest entry first)
//$result = mysql_query("SELECT * FROM users ORDER BY id DESC"); // mysql_query is deprecated
$result = mysqli_query($mysqli, "SELECT * FROM users ORDER BY id DESC"); // using mysqli_query instead
?>

<html>
<head>	
	<title>Homepage</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="style.css">
</head>

<body>
	<div class="container">
	<div class="row">
                <h3></h3>
     </div>
	
	<div class="row">
		<p><a href="../add.html" class="btn btn-success">Ajouter</a></p> 
		<table width='80%' border=0 class="table table-striped table-bordered">

		<tr bgcolor='#CCCCCC'>
			<td>Name</td>
			<td>Age</td>
			<td>Email</td>
			<td>Update</td>
		</tr>
		<?php 
		//while($res = mysql_fetch_array($result)) { // mysql_fetch_array is deprecated, we need to use mysqli_fetch_array 
		while($res = mysqli_fetch_array($result)) { 		
			echo "<tr>";
			echo "<td>".$res['name']."</td>";
			echo "<td>".$res['age']."</td>";
			echo "<td>".$res['email']."</td>";	
			echo "<td><a class='btn btn-primary' href=\"../edit.php?id=$res[id]\">Edit</a>  <a class='btn btn-danger' href=\"../delete.php?id=$res[id]\" onClick=\"return confirm('Are you sure you want to delete?')\">Delete</a> <a class='btn btn-info' href=\"../read.php?id=$res[id]\">Read</a> </td> ";		
		}
		?>
		</table>
	</div>

	</div>

	<script>
	</script>
</body>
</html>
