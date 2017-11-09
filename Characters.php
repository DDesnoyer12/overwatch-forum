<?php 

?>
<!DOCTYPE html>
<html>
<head lang = "en">
	<meta charset="utf-8">
	<title>An Overwatch Fan Website</title>
	<link rel="stylesheet" href="styles/reset.css" />
	<link rel="stylesheet" href="styles/css-header.css" />
	<link rel="stylesheet" href="styles/css-characters.css" />
</head>
<body>
<?php include 'includes/final-header.php'; ?>
<article>
	<section>
		<h1>CHARACTERS</h1>
		<div id="character-list">
			<ul>
				<li><a href="#">All</a></li>
				<li><a href="#">Offense</a></li>
				<li><a href="#">Defense</a></li>
				<li><a href="#">Tank</a></li>
				<li><a href="#">Support</a></li>
			</ul>
		</div>
		<div id="character-div">
			<table>
				<?php 
					$characters = file("text files/Characters.txt");
					$var = 0;
					foreach($characters as $name) {
						if($var == 0) { echo '<tr>';}
						echo '<td><p>'.$name.'</p><img src="images/characters/renders/'.$name.'.png"/></td>';
						$var = $var+1;
						if($var == 5) {
							echo '</tr>';
							$var = 0;
						}
					}
				?>
			</table>
		</div>
	</section>
</article>
</body>
</html>