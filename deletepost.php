<?php
	include 'connect.php';
	if(!isset($_SESSION)) {
		SESSION_START();
	}
	if($_SESSION['user_level'] == 0) {
		header("Location: {$_SERVER["HTTP_REFERER"]}");
	} else {
		
		$delete = $_GET['id'];
		$sql = "DELETE FROM posts WHERE post_id = '".mysqli_real_escape_string($connection, $delete)."'";
		$result = mysqli_query($connection, $sql);
		header("Location: {$_SERVER["HTTP_REFERER"]}");
	}

?>