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
	<title>An Overwatch Fan Website</title>
	<link rel="stylesheet" href="styles/reset.css" />
	<link rel="stylesheet" href="styles/css-header.css" />
	<link rel="stylesheet" href="styles/css-maps.css" />
	<link rel="icon" href="images/favicon.png" />
</head>
<body>
<?php include 'includes/final-header.php'; ?>
<article>
	<section>
	<h1>MAPS</h1>
	<div id="map-list">
	<ul>
		<li><a <?php if(!$_GET) { echo 'style="color:orange"'; } ?> href="Maps.php">All</a></li>
		<li><a <?php if($_GET && $view == "assault") { echo 'style="color:orange"'; } ?> href="Maps.php?view=assault">Assault</a></li>
		<li><a <?php if($_GET && $view == "escort") { echo 'style="color:orange"'; } ?> href="Maps.php?view=escort">Escort</a></li>
		<li><a <?php if($_GET && $view == "hybrid") { echo 'style="color:orange"'; } ?> href="Maps.php?view=hybrid">Hybrid</a></li>
		<li><a <?php if($_GET && $view == "control") { echo 'style="color:orange"'; } ?> href="Maps.php?view=control">Control</a></li>
		<li><a <?php if($_GET && $view == "arena") { echo 'style="color:orange"'; } ?> href="Maps.php?view=arena">Arena</a></li>
	</ul>
	</div>
	<div id="map-div">
			<table>
				<?php 
					if(isset($view)) {
						if($view == "assault") {
							echo "<p class='gamemode'>Assault is a Game Mode in which 
							the Attacking and Defending teams must attempt to take or 
							defend capture points across the map.
							Both teams battle over control of the map, one team on offense, 
							the other on defense. The attackers' goal is to capture critical 
							objectives, while the defenders must maintain control over them until time runs out. </p>";
						} else if($view == "escort") {
							echo "<p class='gamemode'>Escort is a Game Mode in which the 
							Attacking team's objective is to move the payload to a delivery 
							point, while the Defenders must halt the Attackers' progress until time runs out. </p>";
						} else if($view == "hybrid") {
							echo "<p class='gamemode'>The only currently available hybrid 
							Game Mode starts with an Assault and ends with an Escort section. 
							These two parts behave exactly as their stand-alone Game Modes do. </p>";
						} else if($view == "control") {
							echo "<p class='gamemode'>On Control maps, two teams fight over a series of 
							objective areas in a best-of-three format. When a team is in control of the round’s 
							objective area, they will make progress toward capturing it, 
							and whichever team gets to 100% first wins the round. Each round 
							(up to 3 total) will feature a new objective area located in a different part of the map. </p>";
						} else if($view == "arena") {
							echo "<p class='gamemode'>In an Arena game, the goal is not to attack or 
							defend a central objective, but to eliminate all members of the opposing 
							team. Matches are played in several rounds, and players cannot respawn until the next round.</p>";
						}
						$var = 0;
						$sql = "SELECT Map FROM maps WHERE Type = '$view' ORDER BY Map";
						$results = mysqli_query($connection, $sql);
						while($map = mysqli_fetch_array($results)) {
							if($var == 0) { echo '<tr>';}
							echo '<td><a href = "Map.php?Map='.$map['Map'].'"><p>'.$map['Map'].'</p></a><br/>';
							echo '<a href = "Map.php?Map='.$map['Map'].'"><img src="images/maps/'.$map['Map'].'.jpg"/></a></td>';
							$var = $var+1;
							if($var == 4) {
								echo '</tr>';
								$var = 0;
							}
						}
					} else {
						$var = 0;
						$sql = "SELECT Map FROM maps ORDER BY Map";
						$results = mysqli_query($connection, $sql);
						while($map = mysqli_fetch_array($results)) {
							if($var == 0) { echo '<tr>';}
							echo '<td><a href = "Map.php?Map='.$map['Map'].'"><p>'.$map['Map'].'</p></a><br/>';
							echo '<a href = "Map.php?Map='.$map['Map'].'"><img src="images/maps/'.$map['Map'].'.jpg"/></a></td>';
							$var = $var+1;
							if($var == 4) {
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