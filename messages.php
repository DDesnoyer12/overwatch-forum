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
	
	<title>Messages</title>
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
if(isset($_SESSION['signed_in']) && $_SESSION['signed_in']) {
	
	if($_SERVER['REQUEST_METHOD'] != 'POST') {
			$sql = "SELECT * FROM users WHERE user_id = ".$_GET['id']."";
			$result = mysqli_query($connection, $sql);
			$user = mysqli_fetch_assoc($result);
			$fromicon = $user['user_icon'];
			$fromname = $user['user_name'];
			$sql = "SELECT * FROM users WHERE user_id = ".$_SESSION['user_id']."";
			$result = mysqli_query($connection, $sql);
			$user = mysqli_fetch_assoc($result);
			$icon = $user['user_icon'];
			$username = $user['user_name'];
			echo '<h1 class="cat_title" style="font-family: '.'Overwatch'.'; color: #D6D7E6; font-size: 5em; text-align: center;">
					Message history with: <a href="Account.php?id='.$_GET['id'].'"style="color: orange;">'.$fromname.'</span></h1>';

					$sql2 = "SELECT * FROM mbox WHERE (sentto = ".$_SESSION['user_id']." AND sentby = ".$_GET['id'].") OR (sentto = ".$_GET['id']." AND sentby = ".$_SESSION['user_id'].") ORDER BY created";
					
					$result2 = mysqli_query($connection, $sql2);
					
					while($message = mysqli_fetch_assoc($result2)) {
						if($message['sentby'] == $_GET['id']) {
						echo '<div class="topicBox">
						
						<div class="user-land">
										<div> <img class="user-img" src="images/user-icons/'.$fromicon.'.png" />
										</div> 
										<div class="post-user"> 
										<a style="color: orange;" href="Account.php?id='.$_GET['id'].'">'.$fromname.'</a>
										</div>
										<div class="post-time">
										'.date('M. d, h:i A', strtotime($message['created'])).'
										</div>
						</div>
						<div class="post-content">
						<h1 class="cat_title" style="font-family: '.'Overwatch'.'; color: orange; font-size: 2em; text-align: center;"> 
							'.$message['message'].'</h1>
							</div>
							</div>';
						} else {
									
						echo '<div class="topicBox">
						
						<div class="post-content">
						<h1 class="cat_title" style="font-family: '.'Overwatch'.'; color: orange; font-size: 2em; text-align: center;"> 
							'.$message['message'].'</h1>
							</div>
							<div class="user-land">
										<div> <img class="user-img" src="images/user-icons/'.$icon.'.png" />
										</div> 
										<div class="post-user"> 
										<a style="color: orange;" href="Account.php?id='.$_SESSION['user_id'].'">'.$username.'</a>
										</div>
										<div class="post-time">
										'.date('M. d, h:i A', strtotime($message['created'])).'
										</div>
						</div></div>';
						}
					}
							echo '<div style="text-align: center;">';
							echo '<form method="post" action="">';
							echo '<textarea placeholder="Send a message back..." name="reply-content"/></textarea>
								<input type="submit" value="Reply" />
							 </form></div>';
							 
	} else {
		$in = "In";
		$out = "Out";
		$stmt = mysqli_prepare($connection, "INSERT INTO mbox VALUES (NULL, ?, ?, ?, NOW())");
		mysqli_stmt_bind_param($stmt, "sdd", $_POST['reply-content'], $_SESSION['user_id'], $_GET['id']);
		mysqli_stmt_execute($stmt);
		$sql = "SELECT MAX(id) AS id FROM mbox";
		$maxid = mysqli_query($connection, $sql);
		$max = mysqli_fetch_assoc($maxid);
		$stmt2 = mysqli_prepare($connection, "INSERT INTO user_mailboxes VALUES (NULL, ?, 'Out', ?)");
		mysqli_stmt_bind_param($stmt2, "dd", $_SESSION['user_id'], $max['id']);
		mysqli_stmt_execute($stmt2);
		
		$stmt3 = mysqli_prepare($connection, "INSERT INTO user_mailboxes VALUES (NULL, ?, 'In', ?)");
		mysqli_stmt_bind_param($stmt3, "dd", $_GET['id'], $max['id']);
		mysqli_stmt_execute($stmt3);
		header("Location: messages.php?id=".$_GET['id']."");
	}

} else {
	
	
			echo '<h1 class="cat_title" style="font-family: '.'Overwatch'.'; color: #D6D7E6; font-size: 3em; text-align: center;">Please
		<a style="color: orange;"href="Signin.php">Sign in</a> to view your messages.</h1>';
			
}



?>

</section>
</body>
</html>