<?php

include 'connect.php';
if(!isset($_SESSION)) {
	SESSION_START();
}


?>
<!DOCTYPE HTML>
<html>
<head lang = "en">
	<meta charset="utf-8">
	
	<title>Create Profile</title>
	<link rel="stylesheet" href="styles/reset.css" />
	<link rel="stylesheet" href="styles/css-header.css" />
	<link rel="stylesheet" href="newHero.css" />
	<link rel="icon" href="images/favicon.png" />
	<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Open+Sans" />
</head>

<?php 
	include 'includes/final-header.php';
?>
<body>
<section>
<?php

	if(isset($_SESSION['signed_in']) && $_SESSION['signed_in']) {
		echo '<h1 class="cat_title" style="font-family: '.'Overwatch'.'; color: #D6D7E6; font-size: 5em; text-align: center;">
		Create your profile</h1>';
		
		if($_SERVER['REQUEST_METHOD'] != 'POST') {
			echo '<h2 class="cat_title" style="font-family: '.'Overwatch'.'; color: orange; font-size: 3em;text-align: center;">Choose a user icon:</h2>';
               
			echo '<form style="text-align: center; width: 100%;" method="post" action="">';
			echo '<div style="width: 50%; margin: auto; border: solid #393939 1px; height: 500px; overflow-y: scroll;" class="user-icon-box">';
			 $dname = "images/user-icons";
				$usericons = scandir($dname);
				foreach($usericons as $icon) {
					if($icon == "." || $icon == ".." || $icon == "-1.png" || $icon=="0.png") {
						
					} else {
						$value = explode(".png", $icon);
					echo '<input type="radio" name = "icon-value" value='.$value[0].' class="radio_item" id="radio'.$value[0].'"><label class="label_item" for="radio'.$value[0].'"><img style="width: 64px; height: 64px; margin: .5em;" src="images/user-icons/'.$icon.'"/></label></input>';
					}
				}
			echo '</div>
                    <h2 class="cat_title" style="font-family: '.'Overwatch'.'; color: orange; font-size: 3em;">Choose your favorite hero:</h2> 
					<select style="width: 25%;" name="fav-hero">
					<option value="None" selected>None</option>';
					$herosql = "SELECT hero_name, hero_id FROM heroes";
					$heroquery = mysqli_query($connection, $herosql);
					while($hero = mysqli_fetch_assoc($heroquery)) {
						echo '<option value='.$hero['hero_id'].'>'.$hero['hero_name'].'</option>';
					}
					
					
					echo '</select>';
                    echo '<h2 class="cat_title" style="font-family: '.'Overwatch'.'; color: orange; font-size: 3em;">Choose your favorite map:</h2> 
					<select style="width: 25%;" name="fav-map">
					<option value="None" selected>None</option>';
					$mapsql = "SELECT map_name, map_id FROM maps";
					$mapquery = mysqli_query($connection, $mapsql);
					while($map = mysqli_fetch_assoc($mapquery)) {
						echo '<option value='.$map['map_id'].'>'.$map['map_name'].'</option>';
					}
					echo '</select>';
					echo '<h2 class="cat_title" style="font-family: '.'Overwatch'.'; color: orange; font-size: 3em;">Platform you play on:</h2>
					<select style= "width: 25%;" name="platform">
					<option value="None" selected>None</option>
					<option value="PC">PC</option>
					<option value="Xbox One">Xbox One</option>
					<option value="Playstation 4">Playstation 4</option>
					</select>
					
					';
					
					
					echo '</select>';
                echo '<h2 class="cat_title" style="font-family: '.'Overwatch'.'; color: orange; font-size: 3em;">Gamertag:</h2><input type="text" placeholder="Gamertag" name="platform_name"/>
                    ';
				 
				 echo '<h2 class="cat_title" style="font-family: '.'Overwatch'.'; color: orange; font-size: 3em;">Short bio about you:</h2><input type="text" placeholder="Bio" name="bio"/>
                    <input type="submit" value="Update Profile" />
                 </form>';
		} else {
			if(!isset($_POST['icon-value'])) {
				$usericon = 0;
			} else {
				$usericon = $_POST['icon-value'];
			}
			
			if($_POST['fav-hero'] == "None") {
				$favhero = NULL;
			} else {
				$favhero = $_POST['fav-hero'];
			}
			if($_POST['fav-map'] == "None") {
				$favmap = NULL;
			} else {
				$favmap = $_POST['fav-map'];
			}
			if($_POST['platform'] == "None") {
				$platform = NULL;
			} else {
				$platform = $_POST['platform'];
			}
			if($_POST['platform_name'] == NULL) {
				$plat_name = NULL;
			} else {
				$plat_name = $_POST['platform_name'];
			}
			if($_POST['bio'] == NULL) {
				$bio = NULL;
			} else {
				$bio = $_POST['bio'];
			}
			
			$check = "SELECT * FROM user_profile WHERE user_id = ".$_SESSION['user_id']."";
			$checkq = mysqli_query($connection, $check);
			if(mysqli_num_rows($checkq) == 0){
				$stmt = mysqli_prepare($connection, "INSERT INTO user_profile VALUES (NULL, ?, ?, ?, ?, ?, ?)");
				
				mysqli_stmt_bind_param($stmt, "dsddss", $_SESSION['user_id'],$bio,$favhero,$favmap,$platform,$plat_name);
						
				mysqli_stmt_execute($stmt);
				$stmt2 = mysqli_prepare($connection, "UPDATE users SET user_icon = ? WHERE user_id = ?");
				mysqli_stmt_bind_param($stmt2, "dd", $usericon, $_SESSION['user_id']);
				mysqli_stmt_execute($stmt2);
				$_SESSION['user_icon'] = $usericon;
			echo '<h2 class="cat_title" style="font-family: '.'Overwatch'.'; color: orange; font-size: 3em; text-align: center;">
				<a style="color: orange;" href="Account.php?id='.$_SESSION['user_id'].'">Profile Created</a></h2> 
					';
				//$sql = "INSERT INTO user_profile (profile_id, user_id, user_bio, favorite_hero, favorite_map, favorite_platform, platform_username) VALUES 
				//(NULL, '".$_SESSION['user_id']."', '".$bio."',".$favhero.",".$favmap.",'".$platform."','".$plat_name."')";
				
				//$query = mysqli_query($connection, $sql);
				/*if(!$query) {
					echo 'failed';
					echo mysqli_error($connection);
				} else {
				echo 'profile created';
				*/
			} else {
				$stmt = mysqli_prepare($connection, "UPDATE user_profile SET user_bio = ?, favorite_hero = ?, favorite_map = ?, favorite_platform = ?, platform_username = ? WHERE user_id = ?");
				
				mysqli_stmt_bind_param($stmt, "sddssd", $bio,$favhero,$favmap,$platform,$plat_name,$_SESSION['user_id']);
		
				mysqli_stmt_execute($stmt);
				
				$stmt2 = mysqli_prepare($connection, "UPDATE users SET user_icon = ? WHERE user_id = ?");
				mysqli_stmt_bind_param($stmt2, "dd", $usericon, $_SESSION['user_id']);
				mysqli_stmt_execute($stmt2);
				$_SESSION['user_icon'] = $usericon;
				echo '<h2 class="cat_title" style="font-family: '.'Overwatch'.'; color: orange; font-size: 3em; text-align: center;">
				<a style="color: orange;" href="Account.php?id='.$_SESSION['user_id'].'">Profile Updated</a></h2> 
					';
			}
		}
	} else {
		echo '<h1 class="cat_title" style="font-family: '.'Overwatch'.'; color: #D6D7E6; font-size: 3em; text-align: center;">Please
		<a style="color: orange;"href="Signin.php">Sign in</a> to create your profile</h1>';
	}


?>
</section>
</body>
</html>