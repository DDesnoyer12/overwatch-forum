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
<<<<<<< HEAD
		<div class="character-div">
			<ul class="characters">
				
				
				<li><img src = "images/characters/renders/Doomfist.png"/><p>Doomfist</p></li>
				<li><img src = "images/characters/renders/Genji.png"/><p>Genji</p></li>
				<li><img src = "images/characters/renders/McCree.png"/><p>McCree</p></li>
				<li><img src = "images/characters/renders/Pharah.png"/><p>Pharah</p></li>
				<li><img src = "images/characters/renders/Reaper.png"/><p>Reaper</p></li>
				<li><img src = "images/characters/renders/Soldier76.png"/><p>Soldier: 76</p></li>
				<li><img src = "images/characters/renders/Sombra.png"/><p>Sombra</p></li>
				<li><img src = "images/characters/renders/Tracer.png"/><p>Tracer</p></li>
				
				
				<li><img src = "images/characters/renders/Bastion.png"/><p>Bastion</p></li>
				<li><img src = "images/characters/renders/Hanzo.png"/><p>Hanzo</p></li>
				<li><img src = "images/characters/renders/Junkrat.png"/><p>Junkrat</p></li>
				<li><img src = "images/characters/renders/Mei.png"/><p>Mei</p></li>
				<li><img src = "images/characters/renders/Torbjorn.png"/><p>Torbjorn</p></li>
				<li><img src = "images/characters/renders/Widowmaker.png"/><p>Widowmaker</p></li>
				
				
				<li><img src = "images/characters/renders/D.Va.png"/><p>D.Va</p></li>
				<li><img src = "images/characters/renders/Orisa.png"/><p>Orisa</p></li>
				<li><img src = "images/characters/renders/Reinhardt.png"/><p>Reinhardt</p></li>
				<li><img src = "images/characters/renders/Roadhog.png"/><p>Roadhog</p></li>
				<li><img src = "images/characters/renders/Winston.png"/><p>Winston</p></li>
				<li><img src = "images/characters/renders/Zarya.png"/><p>Zarya</p></li>
				
				
				<li><img src = "images/characters/renders/Ana.png"/><p>Ana</p></li>
				<li><img src = "images/characters/renders/Lucio.png"/><p>Lucio</p></li>
				<li><img src = "images/characters/renders/Mercy.png"/><p>Mercy</p></li>
				<li><img src = "images/characters/renders/Moira.png"/><p>Moira</p></li>
				<li><img src = "images/characters/renders/Symmetra.png"/><p>Symmetra</p></li>
				<li><img src = "images/characters/renders/Zenyatta.png"/><p>Zenyatta</p></li>
				
				
=======
		<h1>CHARACTERS</h1>
		<div id="character-list">
			<ul>
				<li><a href="#">All</a></li>
				<li><a href="#">Offense</a></li>
				<li><a href="#">Defense</a></li>
				<li><a href="#">Tank</a></li>
				<li><a href="#">Support</a></li>
>>>>>>> 462688c4fe68a8c95b6b4cc0d54768b6625bd304
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