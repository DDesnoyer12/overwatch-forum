<?php 
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
	<link rel="stylesheet" href="styles/css-characters.css" />
	<link rel="stylesheet" href="styles/css-footer.css" />
</head>
<body>
<?php include 'includes/final-header.php'; ?>
<article>
	<section>
		<h1>HEROES</h1>
		<div id="character-list">
			<ul>
				<li><a <?php if(!$_GET) { echo  'style="color:orange"'; } ?> href="Characters.php">All</a></li>
				<li><a <?php if($_GET && $view == "offense") { echo 'style="color:orange"'; } ?> href="Characters.php?view=offense">Offense</a></li>
				<li><a <?php if($_GET && $view == "defense") { echo 'style="color:orange"'; } ?> href="Characters.php?view=defense">Defense</a></li>
				<li><a <?php if($_GET && $view == "tank") { echo 'style="color:orange"'; } ?> href="Characters.php?view=tank">Tank</a></li>
				<li><a <?php if($_GET && $view == "support") { echo 'style="color:orange"'; } ?> href="Characters.php?view=support">Support</a></li>
			</ul>
		</div>
		<div id="character-div">
			<table>
				<?php 
					if(isset($view)) {
						$characters = file("text files/heroes/".$view.".txt");
						$var = 0;
						foreach($characters as $name) {
							if($var == 0) { echo '<tr>';}
							echo '<td><a href="Character.php?character='.$name.'" ><p>'.$name.'</p></a><br/>';
							echo '<a href = "Character.php?character='.$name.'"><img class="render" src="images/characters/renders/'.$name.'.png"/></a></td>';
							$var = $var+1;
							if($var == 4) {
								echo '</tr>';
								$var = 0;
							}
						}
					} else {
						$characters = file("text files/heroes/characters.txt");
						$var = 0;
						foreach($characters as $name) {
							if($var == 0) { echo '<tr>';}
							echo '<td><a href="Character.php?character='.$name.'" ><p>'.$name.'</p></a><br/>';
							echo '<a href = "Character.php?character='.$name.'"><img src="images/characters/icons/'.$name.'.png"/></a></td>';
							$var = $var+1;
							if($var == 9) {
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
<?php include 'includes/final-footer.php'; ?>
</body>
</html>