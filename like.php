<?php
include 'connect.php';
if(!isset($_SESSION) || (isset($_SESSION) && $_SESSION['signed_in'] == false)) {
	header("Location: signin.php");
}
if(isset($_POST)) {
	$userid = $_POST['user_id'];
	$postid = $_POST['post_id'];
	$type = $_POST['type'];
	echo $userid . '' . $postid . '' . $type;
	$sql = "SELECT * FROM likes WHERE user_id = ".$userid." AND post_id = ".$postid;
	
	$result = mysqli_query($connection, $sql);
	if(mysqli_num_rows($result) == 0) {
		$sql = "INSERT INTO likes VALUES (NULL, ".$userid.", ".$postid.", ".$type.")";
		$good = mysqli_query($connection, $sql);
		if(!$good) {
			echo 'failed'.mysqli_error($connection);
		}
	} else {
		$row = mysqli_fetch_assoc($result);
		if($row['like_or_dislike'] == $type) {
			$sql = "DELETE FROM likes WHERE post_id = ".$postid." AND user_id = ".$userid." AND like_or_dislike = ".$type;
			$delete = mysqli_query($connection, $sql);
		}
		$sql = "UPDATE likes SET like_or_dislike = ".$type." WHERE user_id = ".$userid." AND post_id = ".$postid;
		$update = mysqli_query($connection, $sql);
	}
} 
header("Location: newTopic.php?id=".$_POST['topic_id']);
?>