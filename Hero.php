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
<div class="container">
<?php
	echo '<div class="portrait-column">';
	echo '<table class="portrait-table">';
	$role = mysqli_fetch_assoc(mysqli_query($connection, "SELECT * FROM heroes WHERE Hero='$hero'"));	
	echo '<tr><td><h1 style="font-size: 2.75em">'.$hero.'</h1></td></tr>';
	echo '<tr><td><figure><img class="portrait" src="images/characters/renders/'.$hero.'.png"/></figure></td></tr>';
	echo '<tr><td><p id="desc">'.$role['Bio'].'</p></td></tr>';
	echo '<tr><td><p>Health: '.$role['Health'].'</p>';
	echo '<p style="color: #ffdc47">Armor: '.$role['Armor'].'</p>';
	echo '<p style="color: #6dbbe8">Shield: '.$role['Shield'].'</p></td></tr>';
	
	echo '<tr><td colspan="3"><p style="color: orange">Role: '.$role['Role'].'</p><img id="roleicon" src="images/characters/Roles/'.$role['Role'].'Icon.png"/></td></tr>';
	
	echo '<tr><td><p style="color: #ffdc47; float:left">Difficulty: <img style="zoom:2" src="images/characters/'.$role['Difficulty'].'Star.png"/></p></td></tr>';

	echo '</table>';
	echo '</div>';
	echo '<div>';
	echo '<br/><br/><br/><br/><br/><br/><br/><br/><br/>';
	echo '<h2>Abilities</h2>';
	$sql = "SELECT Ability, Description FROM abilities WHERE Hero = '$hero'";
	$results = mysqli_query($connection, $sql);
	$icon = 1;
	while($abilities = mysqli_fetch_array($results)) {
		echo '<table class="ability-table"><tr>';
		echo '<td><img style="padding-left: .5em; zoom:.75" src="images/characters/Abilities/'.$hero.'/icon-ability-'.$icon.'.png" /></td>';
		echo '<td><h3 class="ability-name">'. $abilities['Ability'].' :</h3>'.$abilities['Description'].'</td>';
		echo '</tr></table>';
		$icon++;
	}
	echo '<h2>Ultimate</h2>';
	$sql = "SELECT Ability, Description FROM ultimates WHERE Hero = '$hero'";
	$results = mysqli_query($connection, $sql);
	while($ultimate = mysqli_fetch_array($results)) {
		echo '<table class="ability-table"><tr>';
		echo '<td><img style="padding-left: .5em" src="images/characters/Abilities/'.$hero.'/ultimate.png" /></td>';
		echo '<td><h3 class="ability-name">'.$ultimate['Ability'].' :</h3>'.$ultimate['Description'].'</td>';
		echo '</tr></table>';
	}
echo'</div>';

?>
</div>
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
		echo '<p class="time">Posted on: '.$row->post_time.'</p>';
		echo '<p class="comment-body">'.$row->Comment.'</p></div>';
	
	}
	while($row = mysqli_fetch_object($result)) {
		
		echo '<div class="comment">';
		echo '<p class="author">'.$row->Author.'</p>';
		echo '<p class="time">Posted on: '.$row->post_time.'</p>';
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
<?php echo '<input type="hidden" name="postid" value='.$hero.' />'; ?>
<input type="submit" />
</form>

</section>

<?php include 'includes/final-footer.php'; ?>
</body>