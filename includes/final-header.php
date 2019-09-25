<?php
	if(!isset($_SESSION)) {
	SESSION_START();
	}
?>
<head>
	<link rel="stylesheet" href="/cs3500/CS3500-Final-Project/styles/css-header.css" />
	<link rel="icon" href="images/favicon.png" />
	<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Open+Sans" />
</head>
<header>
		<nav>
			<ul>
				<li><a href="Home.php"><img id="logo" src="/cs3500/CS3500-Final-Project/images/overwatchlogo.png" /></a></li>
				
				<li>
					<div class="dropdown">
						<button class="dropbtn">Overwatch </button>
						<div class="dropdown-content">
							<a href="Heroes.php">Heroes</a>
							<a href="Maps.php">Maps</a>
							<a href="Tiers.php">Tiers Lists</a>
						</div>
					</div>
				</li>
				<li>
					<div class="dropdown">
						<button class="dropbtn"><a href="/cs3500/CS3500-Final-Project/newIndex.php">Forums</a></button>
					</div>
				</li>
				<!--
				<li>
					<div class="dropdown">
						<button class="dropbtn">Account</button>
						<div class="dropdown-content">
							<a href="Login.php">Login</a>
							<a href="Signup.php">Signup</a>
						</div>
					</div>
				</li>
				-->
				<!--
				<li style="float: right; padding-right: 3em; font-size: 1em;font-family: 'Open Sans';">Hello, Example<br/><span style="font-size: 0.5em;">Account</span><span style="font-size: 0.5em; margin-left: 3em;">Sign Out</span></li><li style="float:right;"><img style="zoom: .75;" src="images/characters/Icons/Zenyatta.png"/></li>
				-->


				<li style="float: right; margin-bottom: 0em; margin-right: 5em; font-size: 1em; border: none;">
					<div class="dropdown">						
						<button class="dropbtn">
						<?php
						if(isset($_SESSION['signed_in']) && $_SESSION['signed_in'] == true)
						{	
							echo '<span style= "margin-left: 0em; font-size: 1.5em;">Hello, '.$_SESSION['user_name'].'</span>';echo '</button>';
							echo '<div style="font-size: 1.5em;" class="dropdown-content">
							<a href="Account.php?id='.$_SESSION['user_id'].'">Your Account</a>
							<a href="inbox.php">Your inbox</a>
							<a href="signout.php">Sign Out</a>
						</div>';
						$result = mysqli_query($connection, "SELECT user_icon FROM users WHERE user_name = '".$_SESSION['user_name']."'");
						while ($row = mysqli_fetch_assoc($result)) {
							
								echo '<img style="border: solid #393939 1px; vertical-align: middle; width: 100px; height: 100px;"src= "images/user-icons/'.$row['user_icon'].'.png"/>';
							
						}
						} else {
							echo '<span style= "margin-left: 0em; font-size: 1.5em;">New? Create An Account!</span>';echo '</button>';
							echo '<div class="dropdown-content">
							<a href="signin.php">Sign In</a>
							<a href="signup.php">Sign Up</a>
						</div>					</div>
						<img border: solid #393939 1px; style="vertical-align: middle; width: 100px; height: 100px;"src= "images/user-icons/0.png"/>';
							
						}
						
						?>

				</li>
			</ul>
			
		</nav>
</header>