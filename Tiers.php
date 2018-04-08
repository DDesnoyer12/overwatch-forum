<?php
define('DBHOST', 'localhost');
define('DBNAME', 'overwatch_forum');
define('DBUSER', 'root');
define('DBPASS', '');
$connection = mysqli_connect(DBHOST, DBUSER, DBPASS, DBNAME);
$error = mysqli_connect_error();
if($error != null) {
$output = "<p>Unable to connect to database</p>" . $error;
exit($output);
}
mysqli_set_charset($con, "utf8");
?>
<!DOCTYPE html>
<html>
<head lang = "en">
	<meta charset="utf-8">
	<title>Tier List</title>
	<link rel="stylesheet" href="styles/reset.css" />
	<link rel="stylesheet" href="styles/css-header.css" />
	<link rel="stylesheet" href="styles/css-tiers.css" />
	<link rel="icon" href="images/favicon.png" />
</head>
<body>
<?php include 'includes/final-header.php'; ?>
<article>
	<section>
		<h1>Competitve Ranks</h1>
		<img class ="pic" src="images/comp-ranks.png"></img><br />
		<br />
		<h2>"I need healing" - Genji Shimada</h2>
		<br /><hr><br />
		<h1>April 2018 - Season 9</h1>
		<div id="character-tier">
		<table>
			<tr>
				<th class="thead">Tiers</th>
				<th class="thead">Heroes</th>
				<th class="thead">Roles</th>
				<th class="thead">Difficulties</th>
			</tr>
			<?php 
				$tiers = array('one', 'two', 'three', 'four', 'five');
				$sql = "SELECT hero_name, hero_class, hero_difficulty, hero_tier FROM heroes ORDER BY hero_tier";
				$results = mysqli_query($connection, $sql);
				while($tier = mysqli_fetch_array($results)) {
					 
					echo '<tr>
						<td class="'.$tiers[$tier['hero_tier']-1].'">Tier '.$tier['hero_tier'].'</td>
						<td class="hero"><a href="Hero.php?hero='.$tier['hero_name'].'"><img class="icon" src="images/characters/Icons/'.$tier['hero_name'].'.png"/>'.$tier['hero_name'].'</a></td>
						<td class="'.$tier['hero_class'].'"><a href="Heroes.php?view='.$tier['hero_class'].'">'.$tier['hero_class'].'</a></td>
						<td class="difficulty"><img src="images/characters/'.$tier['hero_difficulty'].'Star.png"/></td>
					</tr>';
					
				}
			?>
			
		</table>
		
		</div>
		
	</section>
</article>
</body>
</html>