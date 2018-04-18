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
	<title>Your Account</title>
	<link rel="stylesheet" href="styles/reset.css" />
	<link rel="stylesheet" href="styles/css-header.css" />
	<link rel="stylesheet" href="newHero.css" />
	<link rel="icon" href="images/favicon.png" />
	<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Open+Sans" />
</head>
<body>
<?php 
	include 'includes/final-header.php';
?>
<?php 

	if(isset($_SESSION['signed_in']) && $_SESSION['signed_in'] && $_SESSION['user_id'] == $_GET['id']) {
		
		echo '<div style="margin-top: 10em; margin-right: width: 350px; height: auto" class="container">
				<div class="innercontainer">
				<div class="wrapper">

				<h1 style="text-align: center;" class="hero-heading">'.$_SESSION['user_name'].'</h1>
				<div class="text-column">
					<div class="wrapper">
						<p style="margin-bottom: 1em;"><span style="color: orange;"><strong><span style="font-size: 1em;">Admin</span></strong></span></p>
					</div>
				</div>
				
				<div class="image-column">
					<figure style="align: center;" class = "figure-wrapper">
						<img style="zoom:1.5;" src="images/user-icons/'.$_SESSION['user_icon'].'.png" />
					</figure>
					</div>
			</div>';
		
	}

?>
</body>
<section>


</section>

</html>