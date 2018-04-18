<?php

include 'connect.php';
if(!isset($_SESSION)) {
	SESSION_START();
}


?>
<!DOCTYPE HTML>
<html>
<head lang = "en">
	<meta charset="utf-8">
	
	<title>Create Profile</title>
	<link rel="stylesheet" href="styles/reset.css" />
	<link rel="stylesheet" href="styles/css-header.css" />
	<link rel="stylesheet" href="newHero.css" />
	<link rel="icon" href="images/favicon.png" />
	<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Open+Sans" />
</head>

<?php 
	include 'includes/final-header.php';
?>
<body>
<section>
<?php
$sql = "SELECT * FROM users WHERE user_id = ".$_GET['id']."";
$result = mysqli_query($connection, $sql);
$user = mysqli_fetch_assoc($result);

echo '<h1 class="cat_title" style="font-family: '.'Overwatch'.'; color: #D6D7E6; font-size: 5em; text-align: center;">
		Message history with: <a href="Account.php?id='.$_GET['id'].'"style="color: orange;">'.$user['user_name'].'</span></h1>';






?>

</section>
</body>
</html>