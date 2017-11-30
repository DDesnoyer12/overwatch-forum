<?php
define('DBHOST', 'localhost');
define('DBNAME', 'final_project');
define('DBUSER', 'root');
define('DBPASS', '');
$connection = mysqli_connect(DBHOST, DBUSER, DBPASS, DBNAME);
$error = mysqli_connect_error();
if($error != null) {
$output = "<p>Unable to connect to database</p>" . $error;
exit($output);
}


$map = $_GET['Map'];

?>
<head lang = "en">
	<meta charset="utf-8">
	<?php echo '<title>'.$map.'</title>'; ?>
	<link rel="stylesheet" href="styles/reset.css" />
	<link rel="stylesheet" href="styles/css-maps-description.css" />
	<link rel="icon" href="images/favicon.png" />
</head>
<body>
<?php include 'includes/final-header.php'; ?>

<section>
<?php
	echo '<h1>' .$map. '</h1>';
	$maptype = mysqli_fetch_assoc(mysqli_query($connection, "SELECT Type FROM maps WHERE Map ='$map'"));	
	echo '<h2 style="text-align: center; color:orange">'.$maptype['Type'].' Map</h2>';
	echo '<img class="picture" src="images/maps/hd/'.$map.'.jpg"/>';
	echo '<div class="ability-table">';
	echo '<table class="abilities">';
			$sql = "SELECT Description FROM maps WHERE Map ='$map'";
			$results = mysqli_query($connection, $sql);
			echo '<tr><th>Map Description</th></tr>';
			while($des = mysqli_fetch_array($results)) {
			echo '<tr><td><h3 class="ability-name">'.$des['Description'].'</h3></td></tr>';
			}
	echo '</table>';
	echo'</div>';
?>
</section>
<section class="comment-section">
	<h2>Player opinions on <?php echo $map; ?></h2>
<?php
	$result = mysqli_query($connection, "SELECT * FROM comments WHERE PageID = '$map'");
	$row = mysqli_fetch_object($result);
	echo '<div class="comment">';
	if($row == null) {
		echo '<p class="author">No comments yet!</p></div>';
	} else {
		echo '<p class="author">'.$row->Author.'</p>';
		echo '<p class="time">Posted on: '.$row->post_time.'</p>';
		echo '<p class="comment-body">'.$row->Comment.'</p></div>';
	
	}
	while($row = mysqli_fetch_object($result)) {
		
		echo '<div class="comment">';
		echo '<p class="author">'.$row->Author.'</p>';
		echo '<p class="time">OPosted on: '.$row->post_time.'</p>';
		echo '<p class="comment-body">'.$row->Comment.'</p></div>';
	
	}
?>
<h2>Share your opinions:</h2>
<form action="includes/submitcomment.php" method="post" autocomplete="off">
<p>
	<label>Name: </label>
	<input type="text" name="author" />
</p>
<p>
	<label>Comment: </label>
	<textarea name="comment"></textarea>
</p>
<?php echo '<input type="hidden" name="postid" value="'.$map.'" />'; ?>
<input type="submit" />
</form>

</section>

<?php include 'includes/final-footer.php'; ?>
</body>