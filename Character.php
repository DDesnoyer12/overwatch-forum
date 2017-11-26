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


$id = $_GET['character'];
$path = 'text files/descriptions/'. $id . '/Abilities.txt';
$abilityFile = file($path);
$abilities = array();
$index = 0;
foreach($abilityFile as $ability) {
	$fields = preg_split('[\t]', $ability);
	$newAbility = array();
	for($i = 0; $i < count($fields); $i++) {
		$newAbility[$i] = $fields[$i];
	}
	$abilities[$index] = $newAbility;
	$index++;
}
?>
<head lang = "en">
	<meta charset="utf-8">
	<?php echo '<title>'.$id.'</title>'; ?>
	<link rel="stylesheet" href="styles/reset.css" />
	<link rel="stylesheet" href="styles/css-character-description.css" />
</head>
<body>
<?php include 'includes/final-header.php'; ?>

<section>
<?php
echo '<h1>' .$id. '</h1>';
echo '<img class="portrait" src="images/characters/renders/'.$id.'.png"/>';
echo '<table class="abilities">';
foreach($abilities as $ability) {
	echo '<tr>';
	for($i = 0; $i < count($ability); $i++) {
		echo '<td>'.$ability[$i].'</td>';
	}
	echo '</tr>';
}
echo '</table>';
?>
</section>
<section>
	<h2>Player opinions on <?php echo $id; ?></h2>
<?php
	$result = mysqli_query($connection, "SELECT * FROM comments WHERE PageID = '$id'");
	$row = mysqli_fetch_object($result);
	if($row == null) {
		echo '<div class="comment">';
		echo '<p class="author">No comments yet!</p></div>';
	} else {
		echo '<div class="comment">';
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
<?php echo '<input type="hidden" name="postid" value='.$id.' />'; ?>
<input type="submit" />
</form>

</section>

<?php include 'includes/final-footer.php'; ?>
</body>