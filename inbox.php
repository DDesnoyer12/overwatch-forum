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
	
	<title>Inbox</title>
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
echo '<h1 class="cat_title" style="font-family: '.'Overwatch'.'; color: #D6D7E6; font-size: 5em; text-align: center;">
		Your inbox</h1>';
		$sql = "SELECT DISTINCT sentby FROM user_mailboxes LEFT JOIN mbox ON mbox.id = user_mailboxes.message_id WHERE user_mailboxes.user = ".$_SESSION['user_id']." AND user_mailboxes.mailbox = 'In'";
		$result = mysqli_query($connection, $sql);
		while($row = mysqli_fetch_assoc($result)) {
			$sql = "SELECT user_name, user_icon FROM users WHERE user_id = ".$row['sentby']."";
			$user = mysqli_query($connection, $sql);
			$uname = mysqli_fetch_assoc($user);
			
			echo '<a href="messages.php?id='.$row['sentby'].'">';
			echo '<div class="topicBox">
			<div class="user-land">
			<img src="images/user-icons/'.$uname['user_icon'].'.png"/>
			</div>
			<div class="post-content">
			<h1 class="cat_title" style="font-family: '.'Overwatch'.'; color: orange; font-size: 2em; text-align: left;"> 
				'.$uname['user_name'].'</h1>
				</div>
			</div>
			</a>';
		}

?>

</section>
</body>
</html>