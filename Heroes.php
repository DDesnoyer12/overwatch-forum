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

if($_GET) {
	$view = $_GET['view'];
}
?>
<!DOCTYPE html>
<html>
<head lang = "en">
	<meta charset="utf-8">
	<title>Heroes</title>
	<link rel="stylesheet" href="styles/reset.css" />
	<link rel="stylesheet" href="styles/css-characters.css" />
	<link rel="icon" href="images/favicon.png" />
</head>
<body>
<?php include 'includes/final-header.php'; ?>
<article>
	<section>
		<h1>HEROES</h1>
		<div id="character-list">
			<ul>
				<li><a <?php if(!$_GET) { echo  'style="color:orange"'; } ?> href="Heroes.php">All</a></li>
				<li><img class="roleicon" src="images/characters/Roles/OffenseIcon.png" /><a <?php if($_GET && $view == "offense") { echo 'style="color:orange"'; } ?> href="Heroes.php?view=offense">Offense</a></li>
				<li><img class="roleicon" src="images/characters/Roles/DefenseIcon.png" /><a <?php if($_GET && $view == "defense") { echo 'style="color:orange"'; } ?> href="Heroes.php?view=defense">Defense</a></li>
				<li><img class="roleicon" src="images/characters/Roles/TankIcon.png" /><a <?php if($_GET && $view == "tank") { echo 'style="color:orange"'; } ?> href="Heroes.php?view=tank">Tank</a></li>
				<li><img class="roleicon" src="images/characters/Roles/SupportIcon.png" /><a <?php if($_GET && $view == "support") { echo 'style="color:orange"'; } ?> href="Heroes.php?view=support">Support</a></li>
			</ul>
		</div>
		<div id="character-div">
			<table>
				<?php 
					if(isset($view)) {
						
						$var = 0;
						$sql = "SELECT Hero FROM heroes WHERE Role = '$view' ORDER BY Hero";
						$results = mysqli_query($connection, $sql);
						while($hero = mysqli_fetch_array($results)) {
							if($var == 0) { echo '<tr>';}
							echo '<td><a href = "Hero.php?hero='.$hero['Hero'].'"><img class="render" src="images/characters/Renders/'.$hero['Hero'].'.png"/></a>';
							echo '<a href="Hero.php?hero='.$hero['Hero'].'" ><p>'.$hero['Hero'].'</p></a><br/></td>';
							$var = $var+1;
							
							if($view == "offense" | $view == "support") {
								if($var == 4) {
									echo '</tr>';
									$var = 0;
								}
							}
							else if($var == 3) {
								echo '</tr>';
								$var = 0;
							}
						}
					} else {
						$var = 0;
						$sql = "SELECT Hero FROM heroes ORDER BY Hero";
						$results = mysqli_query($connection, $sql);
						while($hero = mysqli_fetch_array($results)) {
							if($var == 0) { echo '<tr>';}
							echo '<td><a href = "Hero.php?hero='.$hero['Hero'].'"><img style="zoom: 1" src="images/characters/Renders/'.$hero['Hero'].'.png"/></a>';
							echo '<a href="Hero.php?hero='.$hero['Hero'].'" ><p>'.$hero['Hero'].'</p></a><br/></td>';
							$var = $var+1;
							if($var == 6) {
								echo '</tr>';
								$var = 0;
							}
						}
					}
				?>
			</table>
		</div>
	</section>
</article>
</body>
</html>