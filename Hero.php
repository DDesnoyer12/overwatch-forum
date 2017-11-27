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


$hero = $_GET['hero'];

?>
<head lang = "en">
	<meta charset="utf-8">
	<?php echo '<title>'.$hero.'</title>'; ?>
	<link rel="stylesheet" href="styles/reset.css" />
	<link rel="stylesheet" href="styles/css-character-description.css" />
	<link rel="icon" href="images/favicon.png" />
</head>
<body>
<?php include 'includes/final-header.php'; ?>

<section>
<?php
	echo '<h1>' .$hero. '</h1>';
	echo '<img class="portrait" src="images/characters/renders/'.$hero.'.png"/>';
	echo '<div class="ability-table">';
		echo '<table class="abilities">';
			$sql = "SELECT Role FROM heroes WHERE Hero='$hero'";
			$results = mysqli_query($connection, $sql);
			echo '<tr><th>Role</th></tr>';
			while($role = mysqli_fetch_array($results)) {
			echo '<tr><td><h3 class="ability-name">'.$role['Role'].'</h3><img id="roleicon" src="images/characters/Roles/'.$role['Role'].'Icon.png" /></td></tr>';
			}
			echo '<tr><th>Abilities</th></tr>';
			$sql = "SELECT Ability, Description FROM abilities WHERE Hero = '$hero'";
			$results = mysqli_query($connection, $sql);
			while($abilities = mysqli_fetch_array($results)) {
				echo '<tr>';
				echo '<td><h3 class="ability-name">'. $abilities['Ability'].' :</h3>'.$abilities['Description'].'</td>';
				echo '</tr>';
			}
			echo '<tr><th>Ultimate</th></tr>';
			$sql = "SELECT Ability, Description FROM ultimates WHERE Hero = '$hero'";
			$results = mysqli_query($connection, $sql);
			while($ultimate = mysqli_fetch_array($results)) {
				echo '<tr>';
				echo '<td><h3 class="ability-name">'.$ultimate['Ability'].' :</h3>'.$ultimate['Description'].'</td>';
				echo '</tr>';
			}
	echo '</table>';
echo'</div>';
?>
</section>
<section class="comment-section">
	<h2>Player opinions on <?php echo $hero; ?></h2>
<?php
	$result = mysqli_query($connection, "SELECT * FROM comments WHERE PageID = '$hero'");
	$row = mysqli_fetch_object($result);
	echo '<div class="comment">';
	if($row == null) {
		echo '<p class="author">No comments yet!</p></div>';
	} else {
		echo '<p class="author">'.$row->Author.'</p>';
		echo '<p class="comment-body">'.$row->Comment.'</p></div>';
	
	}
	while($row = mysqli_fetch_object($result)) {
		
		echo '<div class="comment">';
		echo '<p class="author">'.$row->Author.'</p>';
		echo '<p class="comment-body">'.$row->Comment.'</p></div>';
	
	}
?>
<h2>Share your opinions:</h2>
<form action="includes/submitcomment.php" method="post">
<p>
	<label>Name: </label>
	<input type="text" name="author" />
</p>
<p>
	<label>Comment: </label>
	<textarea name="comment"></textarea>
</p>
<?php echo '<input type="hidden" name="postid" value='.$hero.' />'; ?>
<input type="submit" />
</form>

</section>

<?php include 'includes/final-footer.php'; ?>
</body>