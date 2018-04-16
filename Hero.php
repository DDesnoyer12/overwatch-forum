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

mysqli_set_charset($connection, "utf8");
/*
$test = "Ammo: 20";
$split = explode(':', $test);
echo $split[0].':';
echo $split[1];
*/
$hero = $_GET['hero'];

?>
<html>
<head lang = "en-US">
	<meta charset="utf-8">
	
	<?php echo '<title>'.$hero.'</title>'; ?>
	<link rel="stylesheet" href="styles/reset.css" />
	<link rel="stylesheet" href="newHero.css" />
	<link rel="icon" href="images/favicon.png" />
	
	<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Open+Sans" />
</head>
<body>
<?php include 'includes/final-header.php'; ?>

<section>
<?php

	$info = mysqli_fetch_assoc(mysqli_query($connection, "SELECT * FROM heroes WHERE hero_name='$hero'"));	
	echo '<div style="width: 350px; height: auto" class="container">
	<div class="innercontainer">
	<div class="wrapper">

	<h1 style="text-align: center;" class="hero-heading">'.$hero.'</h1>
	<div class="text-column">
		<div class="wrapper">
			<p style="margin-bottom: 1em;"><span style="color: orange;"><strong><span style="font-size: 1em;">'.$info['hero_class'].'</span></strong></span></p>
		</div>
	</div>
	
	<div class="image-column">
		<figure style="align: center;" class = "figure-wrapper">
			<img src="images/Characters/Renders/'.$hero.'.png" />
		</figure>
	</div>
	
	<div class="text-column-stats">
		<div class="wrapper">
			<h4 class="bstats">Base Stats</h4>
			
			<p class="pstats" style="background-color: #5bb75b; border-radius: .25em;"><span style="color: white; text-align:center;"><strong>Health: </strong> </span><span style="color: white; float: right;">'.$info['hero_health'].'</span></p>	
			<p class="pstats" style="background-color: #faa732;"><span style="color: white;"><strong>Armor:  </strong> </span><span style="color: white; float: right;">'.$info['hero_armor'].'</span></p>
			<p class="pstats" style="background-color: #0074cc;"><span style="color: white; text-align: lef"><strong>Shield: </strong> </span><span style="color: white; float: right;">'.$info['hero_shield'].'</span></p>
		</div>
	</div>
	
	<div class="image-column">
		<div class="wrapper">
			<h4 class="bstats">Difficulty</h4>
			<figure style="align: center; zoom: 1.5;" class = "figure-wrapper">
			<img src="images/Characters/'.$info['hero_difficulty'].'Star.png" />
		</figure>
		</div>
	</div>
	
	<div class="text-column-bio">
		<div class="wrapper">
			<h4 class="bstats">Bio</h4>
			<p style="font-size: 1em;"><span><strong>Real Name: </strong></span><span>'.$info['hero_name_real'].'</span></p>
			<p style="font-size: 1em;"><span><strong>Age: </strong></span><span>'.$info['hero_age'].'</span></p>
			<p style="font-size: 1em;"><span><strong>Occupation: </strong></span><span>'.$info['hero_occupation'].'</span></p>
			<p style="font-size: 1em;"><span><strong>Base Of Operations: </strong></span><span>'.$info['hero_bop'].'</span></p>
			<p style="font-size: 1em;"><span><strong>Affiliation: </strong></span><span></span>'.$info['hero_affiliation'].'</p>
		</div>
	</div>
	
</div>
</div>
</div>

';
	/*
	echo '<tr><td><h1 style="font-size: 2.75em">'.$hero.'</h1></td></tr>';
	echo '<tr><td><figure><img class="portrait" src="images/characters/renders/'.$hero.'.png"/></figure></td></tr>';
	echo '<tr><td><p id="desc">'.$role['Bio'].'</p></td></tr>';
	echo '<tr><td><p>Health: '.$role['Health'].'</p>';
	echo '<p style="color: #ffdc47">Armor: '.$role['Armor'].'</p>';
	echo '<p style="color: #6dbbe8">Shield: '.$role['Shield'].'</p></td></tr>';
	
	echo '<tr><td colspan="3"><p style="color: orange">Role: '.$role['Role'].'</p><img id="roleicon" src="images/characters/Roles/'.$role['Role'].'Icon.png"/></td></tr>';
	
	echo '<tr><td><p style="color: #ffdc47; float:left">Difficulty: <img style="zoom:2" src="images/characters/'.$role['Difficulty'].'Star.png"/></p></td></tr>';
	*/
	
	
	?>


<?php
/*
	


	echo '<h2>Abilities</h2>';
	$sql = "SELECT Ability, Description FROM abilities WHERE Hero = '$hero'";
	$results = mysqli_query($connection, $sql);
	$icon = 1;
	while($abilities = mysqli_fetch_array($results)) {

		echo '<div id="'.($icon).'" class = "tabcontent">
			<h3>'.$abilities['Ability'].'</h3>
			<h2>'.$abilities['Description'].'</h2></div>';
		
		/*
		echo '<table class="ability-table"><tr>';
		echo '<td><img style="padding-left: .5em; zoom:.75" src="images/characters/Abilities/'.$hero.'/icon-ability-'.$icon.'.png" /></td>';
		echo '<td><h3 class="ability-name">'. $abilities['Ability'].' :</h3>'.$abilities['Description'].'</td>';
		echo '</tr></table>';
		*/
		/*
		$icon++;
	}
	for($i = 1; $i < $icon; $i++) {
		if($i == 1) {
			echo '<button class="tablinks" id="defaultOpen" onclick="openCity(event, \''.$i.'\')"><img style="padding-left: .5em; zoom: .75" src="images/characters/Abilities/'.$hero.'/icon-ability-'.$i.'.png"/></button>';
		} else {
			echo '<button class="tablinks" onclick="openCity(event, \''.$i.'\')"><img style="padding-left: .5em; zoom: .75" src="images/characters/Abilities/'.$hero.'/icon-ability-'.$i.'.png"/></button>';
		}
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
*/

?>
<div style = "height: auto;" class="master-container">
<?php
	$sql = "SELECT * FROM abilities WHERE ability_hero = (SELECT hero_id FROM heroes WHERE hero_name = '$hero')";
	$results = mysqli_query($connection, $sql);
	$index = array('one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' ,'ten');
	while($info = mysqli_fetch_array($results)) {
		echo '<div style="width: 1000px; height: auto; margin-right: 20em; margin-left: 0; margin-bottom: 0; float: right;" class="container">
		
	<div class="innercontainer">
		<div class="ability-wrapper">
		<div class="ability-icon">
			<figure>';
			if(file_exists("images/characters/Abilities/".$hero."/".$info['ability_name'].".png")) {
				echo '<img style = "max-width: 100%; max-height: 100%;" src="images/characters/Abilities/'.$hero.'/'.$info['ability_name'].'.png" />';
			}
			echo '</figure>
		</div>
		<div class="text-column-ability">
			<h3 class="aname">'.$info['ability_name'].'</h3>
			
			<p class="ability-description"><span><span>'.$info['ability_description'].'</span></p>
			<div class="ability-text-wrapper" >';
				for($i = 0; $i < 10; $i++) {
					if($info['ability_'.$index[$i].''] != NULL) {
						$split = explode(':', $info['ability_'.$index[$i].'']);
						echo '
				<p><span><strong><span>'. $split[0].":".'</span></strong></span><span>'.$split[1].'</span></p>';
					}
				}
			echo '</div>
		</div>
		</div></div></div>';
				
	}

?>
</div>
<!--
<div style="width: 1000px; height: auto; margin-left: 0; margin-bottom: 0;" class="container">
	<div class="innercontainer">
		<div class="ability-wrapper">
		<div class="ability-icon">
			<figure>
				<img src="images/characters/Abilities/Zenyatta/icon-ability-1.png" />
			</figure>
		</div>
		<div class="text-column-ability">
			<h3 class="aname">Orb of Destruction (Singular Orb)</h3>
			
			<p class="ability-description"><span><span>Zenyatta projects his destructive energy orbs individually.</span></p>
			<div class="ability-text-wrapper" >
				<p><span><strong><span>Ammo: </span></strong></span><span>20 rounds per clip</span></p>
				
				<p><span><strong><span>Reload time: </span></strong></span><span>2 seconds</span></p>
				
				<p><span><strong><span>Damage: </span></strong></span><span>20 rounds per clip</span></p>
				<p><span><strong><span>Ammo: </span></strong></span><span>46</span></p>
				<p><span><strong><span>Fire Rate:  </span></strong></span><span>2.5 shots per second</span></p>
				<p><span><strong><span>Projectile Speed: </span></strong></span><span>Projectile Speed:</span></p>
				<p><span><strong><span>Ammo: </span></strong></span><span>60 m/s projectile speed</span></p>
				<p><span><strong><span>Headshots: </span></strong></span><span>Yes</span></p>
				</div>
		</div>
</div>
</div></div>

<div style="width: 1000px; height: auto; margin-left: 0; margin-bottom: 0; margin-top: 0" class="container">
	<div class="innercontainer">
		<div class="ability-wrapper">
		<div class="ability-icon">
			<figure>
				<img src="images/characters/Abilities/Zenyatta/icon-ability-2.png" />
			</figure>
		</div>
		<div class="text-column-ability">
			<h3 class="aname">Orb of Harmony</h3>
			<p class="ability-description"><span>Zenyatta casts an orb over the shoulder of a targeted ally. So long as Zenyatta maintains line of sight, the orb slowly restores health to his ally. Only one ally can receive the orb’s benefit at a time.</span></p>
			<div class="ability-text-wrapper" >
				
				<p><span><strong><span>Healing: </span></strong></span><span>30 HP per second</span></p>
				
				<p><span><strong><span>Projectile Speed: </span></strong></span><span>120 m/s projectile speed</span></p>
				
				<p><span><strong><span>Range: </span></strong></span><span>40 m</span></p>
				<p><span><strong><span>Duration: </span></strong></span><span>3 seconds or until target is changed</span></p>
				<p><span><strong><span>Cooldown: </span></strong></span><span>None</span></p>
			</div>
		</div>
</div>
</div></div>

<div style="width: 1000px; height: auto; margin-left: 0; margin-bottom: 0; margin-top: 0;" class="container">
	<div class="innercontainer">
		<div class="ability-wrapper">
		<div class="ability-icon">
			<figure>
				<img src="images/characters/Abilities/Zenyatta/icon-ability-3.png" />
			</figure>
		</div>
		<div class="text-column-ability">
			<h3 class="aname">Orb of Discord</h3>
			
			<p class="ability-description"><span><span>Zenyatta projects his destructive energy orbs individually.</span></p>
			<div class="ability-text-wrapper" >
				<p><span><strong><span>Damage Resistance Debuff: </span></strong></span><span>-30% resistance</span></p>
				<p><span><strong><span>Projectile Speed: </span></strong></span><span>120 m/s</span></p>
				<p><span><strong><span>Range: </span></strong></span><span>40 m</span></p>
				<p><span><strong><span>Duration: </span></strong></span><span>3 Seconds or until target is changed</span></p>
				<p><span><strong><span>Cooldown: </span></strong></span><span>None</span></p>
			</div>
		</div>
</div>
</div></div>

<div style="width: 1000px; height: auto; margin-left: 0; margin-bottom: 0; margin-top: 0;" class="container">
	<div class="innercontainer">
		<div class="ability-wrapper">
		<div class="ability-icon">
			<figure>
				<img src="images/characters/Abilities/Zenyatta/ultimate.png" />
			</figure>
		</div>
		<div class="text-column-ability">
			<h3 class="aname">Orb of Discord</h3>
			
			<p class="ability-description"><span><span>Zenyatta projects his destructive energy orbs individually.</span></p>
			<div class="ability-text-wrapper" >
				<p><span><strong><span>Damage Resistance Debuff: </span></strong></span><span>-30% resistance</span></p>
				<p><span><strong><span>Projectile Speed: </span></strong></span><span>120 m/s</span></p>
				<p><span><strong><span>Range: </span></strong></span><span>40 m</span></p>
				<p><span><strong><span>Duration: </span></strong></span><span>3 Seconds or until target is changed</span></p>
				<p><span><strong><span>Cooldown: </span></strong></span><span>None</span></p>
			</div>
		</div>
</div>
</div></div>
-->
</section>
<!--
<section class="comment-section">
	<h2>Player opinions on <?php echo $hero; ?></h2>
-->
<?php
/*
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
	*/
?>

<!--
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
-->
</body>
<script>
function openCity(evt, cityName) {
    // Declare all variables
    var i, tabcontent, tablinks;

    // Get all elements with class="tabcontent" and hide them
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }

    // Get all elements with class="tablinks" and remove the class "active"
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }

    // Show the current tab, and add an "active" class to the button that opened the tab
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}

	document.getElementById("defaultOpen").click();
</script>
</html>