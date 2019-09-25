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
	
	<?php
	$sql = "SELECT user_name FROM users WHERE user_id = ".$_GET['id'];
	$usernamequery = mysqli_query($connection, $sql);
	$username = mysqli_fetch_assoc($usernamequery);
	if($username == NULL) {
		echo '<title>User does not exist.</title>';
	} else {
	echo '<title>'.$username['user_name'].'\'s account</title>';
	}
	
	?>
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

	if(isset($_SESSION['signed_in']) && $_SESSION['signed_in'] && $_SESSION['user_id'] == $_GET['id']) {
		echo '<div style="width:350px; height: auto;" class="container">
			<div class="innercontainer">
			<div class="wrapper">
			<div class="image-column">
				<figure style="align: center;" class = "figure-wrapper">
					<img style="width: 112px; height: 100px; border: solid #393939 1px; zoom: 2; margin-top: 1em;" src="images/user-icons/'.$_SESSION['user_icon'].'.png" />
				</figure>
			</div>
	<h1 style="text-align: center;font-size: 2.5em; color: orange;" class="hero-heading">'.$_SESSION['user_name'].'</h1>
	
	<div class="text-column">
		<div class="wrapper">';
		if(isset($_SESSION['user_level']) && $_SESSION['user_level'] == 1) {
			echo '<p><span style="color: orange;"><strong><span style="font-size: 1em;">Forum Admin</span></strong></span></p>';
		} else {
			echo '<p><span style="color: orange;"><strong><span style="font-size: 1em;">Forum Member</span></strong></span></p>';
		}
		echo '
		</div>
	</div>
		<div class="text-column">
		<div class="wrapper">';
		$sql3 = "SELECT COUNT(post_id) AS total FROM posts WHERE post_by = ".$_GET['id']."";
		$query3 = mysqli_query($connection, $sql3);
		$result3 = mysqli_fetch_assoc($query3);
		
		if($result3 == NULL) {
			echo '<p><span style="color: white;"><strong><span style="font-size: .75em;">Total Posts: 0</span></strong></span></p>';
		} else {
			echo '<p><span style="color: white;"><strong><span style="font-size: .75em;">Total Posts: '.$result3['total'].'</span></strong></span></p>';
		}

		echo '
		</div>
	</div>
	<div class="text-column">
		<div class="wrapper">';
			$scoresql = "SELECT SUM(like_or_dislike) AS score FROM likes, posts WHERE posts.post_by = ".$_GET['id']." AND posts.post_id = likes.post_id";
			//$scoresql = "SELECT SUM(like_or_dislike) AS score FROM likes WHERE user_id = ".$_GET['id']."";
			$scorequery = mysqli_query($connection, $scoresql);
			$score = mysqli_fetch_assoc($scorequery);
			if($score == NULL || $score['score'] == NULL || mysqli_num_rows($scorequery) == 0) {
				echo '<p><span style="color: white;"><strong><span style="font-size: .75em;">User Score: 0</span></strong></span></p>';
			} else {
			echo '<p><span style="color: white;"><strong><span style="font-size: .75em;">User Score: '.$score['score'].'</span></strong></span></p>';
			}
		echo'
		</div>
	</div>';
	

	
	echo '
	<div class="text-column-bio">
		<div class="wrapper">
			<h4 class="bstats">Profile</h4>';	
			$profilesql = "SELECT * FROM user_profile, users WHERE user_profile.user_id = ".$_GET['id']."";
			$pquery = mysqli_query($connection, $profilesql);
			$profile = mysqli_fetch_assoc($pquery);
			
			if($profile == NULL) {
				echo '<h1 class="cat_title" style="font-family: '.'Open Sans'.'; color:orange; font-size: 1em; text-align: center;">You dont have a profile yet.</h1>';
					echo '<div style="margin-top: 1em; text-align: center;">
				<button class="newTopic" style="margin-bottom: 1em;width: 100%;"><a href="createProfile.php">+ Create Your Profile</a></button>
				</div>';
			} else {
				
			if($profile['user_bio'] == NULL) {
				echo '<p><span><strong style="color: orange;">Bio: </strong></span><span>None</span></p>';
			} else {
				echo '<p><span><strong style="color: orange;">Bio: </strong></span><span>'.$profile['user_bio'].'</span></p>';
			}
			
			if($profile['favorite_hero'] == NULL) {
				echo '<p><span><strong style="color: orange;">Favorite Hero: </strong></span><span>None</span></p>';
			} else {
			$p1sql = "SELECT hero_name FROM heroes WHERE hero_id = ".$profile['favorite_hero']."";
			$p1query = mysqli_query($connection, $p1sql);
			$p1result = mysqli_fetch_assoc($p1query);
			echo '<p><span><strong style="color: orange;">Favorite Hero: </strong></span><span>'.$p1result['hero_name'].'</span></p>';
			}
			
			if($profile['favorite_map'] == NULL) {
				
				echo '<p><span><strong style="color: orange;">Favorite Map: </strong></span><span>None</span></p>';
			} else {
			$p1sql = "SELECT hero_name, map_name FROM heroes, maps WHERE hero_id = ".$profile['favorite_hero']." AND map_id = ".$profile['favorite_map']."";
			$p1query = mysqli_query($connection, $p1sql);
			$p1result = mysqli_fetch_assoc($p1query);
			echo '<p><span><strong style="color: orange;">Favorite Map: </strong></span><span>'.$p1result['map_name'].'</span></p>';
			}
			if($profile['favorite_platform'] == NULL) {
				echo '<p><span><strong style="color: orange;">Platform: </strong></span><span>None</span></p>';
			} else {
				echo '<p><span><strong style="color: orange;">Platform: </strong></span><span>'.$profile['favorite_platform'].'</span></p>';
			}
			if($profile['platform_username'] == NULL) {
				echo '<p><span><strong style="color: orange;">Gamertag: </strong></span><span>None</span></p>';
			} else {
				echo'<p><span><strong style="color: orange;">Gamertag: </strong></span><span>'.$profile['platform_username'].'</span></p>';
			}
			echo '
			<p><span><strong style="color: orange;">Joined: </strong></span><span>'.date('M. D, Y', strtotime($profile['user_date'])).'</span></p>';
				echo '
				<div style="margin-top: 1em; text-align: center;">
				<button class="newTopic" style="margin-bottom: 1em;width: 100%;"><a href="createProfile.php">+ Edit Your Profile</a></button>
				</div>';
			}
			echo '
		</div>
	</div>
	
</div>
</div>
</div>	
<div class="text-column">
		<div class="wrapper">
			<p><span style="color: #D6D7E6;"><strong><span style="font-family: '.'Overwatch'.'; font-size: 2em;">User Posts</span></strong></span></p>
		</div>
	</div>';
	echo '<div style="float:right; width: 1200px; margin-right: 5em; margin-bottom: 0" class="line">
		<div class="replies">Score</div>
		<div style="width: 50%; font-family: Open Sans; color: orange; font-size: 1.1em;" class="post-title"> Post </div> 		
		<div class="posted-by">Category</div>
		<div class="replies">Replies</div>
		<div class="posted-time">Time</div>
	</div>';
	$count = 0;
	$cat_sql = "SELECT cat_name, cat_id FROM categories";
	$categories = mysqli_query($connection, $cat_sql);
	while($cat = mysqli_fetch_assoc($categories)) {
		
		$topicsql = "SELECT * FROM topics WHERE topic_cat = '".$cat['cat_id']."' AND topic_by = ".$_GET['id'];
		$topics = mysqli_query($connection, $topicsql);
		if(mysqli_num_rows($topics) == 0) {
			if($count > 0) {
			break(1);
			} else {
		echo '	<div class="text-column">
				<div class="wrapper">
			<p><span style="color: #D6D7E6;"><strong><span style="float: right; margin-right: 7.5em;font-family: '.'Overwatch'.'; font-size: 2em;"> You have not made any posts yet</span></strong></span></p>
		</div>
			</div>'; break;
			}
		} else {
		while($topic = mysqli_fetch_assoc($topics)) {
				echo'
	
		<a class="topicLink" href="newTopic.php?id='.$topic['topic_id'].'">									   
		<div style="margin-bottom: 0em; margin-right: 5em;float: right; width: 1200px;" class="line">';
		$sql = "SELECT SUM(like_or_dislike) AS score FROM likes, posts, topics WHERE topics.topic_id = ".$topic['topic_id']." AND posts.post_id = likes.post_id AND posts.post_topic = topics.topic_id AND posts.post_date = topics.topic_date";
				$scoreQuery = mysqli_query($connection, $sql);
				$score = mysqli_fetch_assoc($scoreQuery);
				echo '<a class="topicLink" href="newTopic.php?id='.$topic['topic_id'].'">	';
				if($score['score'] > 0) {
					echo'<div class="replies"><img style="width: 16px; height: 16px;" src="images/like-true.png" />'.$score['score'].'</div>';
				} else if($score['score'] < 0) {
					echo'<div class="replies"><img style="width: 16px; height: 16px;" src="images/dislike-true.png" />'.$score['score'].'</div>';
				} else {
					echo'<div class="replies"><img style="width: 16px; height: 16px;" src="images/like.png" />0</div>';
				
				}
			echo '<div style="width: 50%;" class="post-title">'.$topic['topic_subject'].'</div>';	
		echo '<div style="margin-left: 0.25em;" class="posted-by">'.$cat['cat_name'].'</div>';
				$replysql = "SELECT COUNT(post_id) AS replies FROM posts WHERE post_topic = '".$topic['topic_id']."'";
					$replies = mysqli_query($connection, $replysql);
					$reply = mysqli_fetch_assoc($replies);
					echo '<div class="replies"><img class="reply-icon" src="images/reply-icon.png"/>'.$reply['replies'].'</div>

			<div style="margin-left: 0.75em;" class="posted-time">'.date('M. d, h:i A', strtotime($topic['topic_date'])).'</div>';
		echo '</div></a>';
		$count++;
		}
		}
	}
	/*echo'
	
		<a class="topicLink" href="newTopic.php?id='.$row['topic_id'].'">									   
		<div style="margin-right: 10em;float: right; width: 1000px;" class="line">
			<div style="width: 50%;" class="post-title">New hero coming soon?</div> 
			<div class="replies"><img class="reply-icon" src="images/reply-icon.png"/>0</div>
			<div class="posted-by">testadmin</div>
			<div class="posted-time">'.date('M. d, h:i A', strtotime($row['topic_date'])).'</div>';
			if(isset($_SESSION['user_level']) && $_SESSION['user_level'] == 1) {
				echo '<div title="Delete" class="delete"><a href="deletetopic.php?id='.$row['topic_id'].'"><img class="delete-icon" src="images/delete.png" /></a></div>';
			}
		echo '</div></a>';
*/
		
	} else {
		$othersql = "SELECT * FROM users WHERE user_id = ".$_GET['id']."";
		$otherresult = mysqli_query($connection, $othersql);
		$other = mysqli_fetch_assoc($otherresult);
		if($other == NULL) {
			echo '
			<div class="text-column">
			<div class="wrapper">
				<p><span style="color: #D6D7E6;"><strong><span style="font-family: '.'Overwatch'.'; font-size: 2em;">This user does not exist.</span></strong></span></p>
			</div>
			</div>';
	
		} else {
		echo '<div style="width:350px; height: auto;" class="container">
			<div class="innercontainer">
			<div class="wrapper">
			<div class="image-column">
				<figure style="align: center;" class = "figure-wrapper">';

					echo '<img style="width: 112px; height: 100px; border: solid #393939 1px; zoom: 2; margin-top: 1em;" src="images/user-icons/'.$other['user_icon'].'.png" />';
				echo '
				</figure>
			</div>
	<h1 style="text-align: center;font-size: 2.5em; color: orange;" class="hero-heading">'.$other['user_name'].'</h1>
	
	<div class="text-column">
		<div class="wrapper">';
		if(isset($_SESSION['user_level']) && $_SESSION['user_level'] == 1) {
			echo '<p><span style="color: orange;"><strong><span style="font-size: 1em;">Forum Admin</span></strong></span></p>';
		} else {
			echo '<p><span style="color: orange;"><strong><span style="font-size: 1em;">Forum Member</span></strong></span></p>';
		}
		echo '
		</div>
	</div>
		<div class="text-column">
		<div class="wrapper">';
		$sql3 = "SELECT COUNT(post_id) AS total FROM posts WHERE post_by = ".$_GET['id']."";
		$query3 = mysqli_query($connection, $sql3);
		$result3 = mysqli_fetch_assoc($query3);
		
		if($result3 == NULL) {
			echo '<p><span style="color: white;"><strong><span style="font-size: .75em;">Total Posts: 0</span></strong></span></p>';
		} else {
			echo '<p><span style="color: white;"><strong><span style="font-size: .75em;">Total Posts: '.$result3['total'].'</span></strong></span></p>';
		}

		echo '
		</div>
	</div>
	<div class="text-column">
		<div class="wrapper">';
			$scoresql = "SELECT SUM(like_or_dislike) AS score FROM likes, posts WHERE posts.post_by = ".$_GET['id']." AND posts.post_id = likes.post_id";
			//$scoresql = "SELECT SUM(like_or_dislike) AS score FROM likes WHERE user_id = ".$_GET['id']."";
			$scorequery = mysqli_query($connection, $scoresql);
			$score = mysqli_fetch_assoc($scorequery);
			if($score == NULL || $score['score'] == NULL || mysqli_num_rows($scorequery) == 0) {
				echo '<p><span style="color: white;"><strong><span style="font-size: .75em;">User Score: 0</span></strong></span></p>';
			} else {
			echo '<p><span style="color: white;"><strong><span style="font-size: .75em;">User Score: '.$score['score'].'</span></strong></span></p>';
			}
	
		echo'
		</div>
	</div>';	
	echo '<div class="text-column-bio">
		<div class="wrapper">
		<h4 class="bstats">Profile</h4>';	
			$profilesql = "SELECT * FROM user_profile, users WHERE user_profile.user_id = ".$_GET['id']."";
			$pquery = mysqli_query($connection, $profilesql);
			$profile = mysqli_fetch_assoc($pquery);
			
			if($profile == NULL) {
				echo '<h1 class="cat_title" style="font-family: '.'Open Sans'.'; color:orange; margin-bottom: 1em; font-size: 1em; text-align: center;">This user has no profile yet.</h1>';
					
			} else {
				
			if($profile['user_bio'] == NULL) {
				echo '<p><span><strong style="color: orange;">Bio: </strong></span><span>None</span></p>';
			} else {
				echo '<p><span><strong style="color: orange;">Bio: </strong></span><span>'.$profile['user_bio'].'</span></p>';
			}
			
			if($profile['favorite_hero'] == NULL) {
				echo '<p><span><strong style="color: orange;">Favorite Hero: </strong></span><span>None</span></p>';
			} else {
			$p1sql = "SELECT hero_name FROM heroes WHERE hero_id = ".$profile['favorite_hero']."";
			$p1query = mysqli_query($connection, $p1sql);
			$p1result = mysqli_fetch_assoc($p1query);
			echo '<p><span><strong style="color: orange;">Favorite Hero: </strong></span><span>'.$p1result['hero_name'].'</span></p>';
			}
			
			if($profile['favorite_map'] == NULL) {
				
				echo '<p><span><strong style="color: orange;">Favorite Map: </strong></span><span>None</span></p>';
			} else {
			$p1sql = "SELECT hero_name, map_name FROM heroes, maps WHERE hero_id = ".$profile['favorite_hero']." AND map_id = ".$profile['favorite_map']."";
			$p1query = mysqli_query($connection, $p1sql);
			$p1result = mysqli_fetch_assoc($p1query);
			echo '<p><span><strong style="color: orange;">Favorite Map: </strong></span><span>'.$p1result['map_name'].'</span></p>';
			}
			if($profile['favorite_platform'] == NULL) {
				echo '<p><span><strong style="color: orange;">Platform: </strong></span><span>None</span></p>';
			} else {
				echo '<p><span><strong style="color: orange;">Platform: </strong></span><span>'.$profile['favorite_platform'].'</span></p>';
			}
			if($profile['platform_username'] == NULL) {
				echo '<p><span><strong style="color: orange;">Gamertag: </strong></span><span>None</span></p>';
			} else {
				echo'<p><span><strong style="color: orange;">Gamertag: </strong></span><span>'.$profile['platform_username'].'</span></p>';
			}
			}
		echo '
		</div>
	</div>
	
</div>
</div>
</div>	
<div class="text-column">
		<div class="wrapper">
			<p><span style="color: #D6D7E6;"><strong><span style="font-family: '.'Overwatch'.'; font-size: 2em;">User Posts</span></strong></span></p>
		</div>
	</div>';
	echo '<div style="float:right; width: 1200px; margin-right: 5em; margin-bottom: 0" class="line">
		<div class="replies">Score</div>
		<div style="width: 50%; font-family: Open Sans; color: orange; font-size: 1.1em;" class="post-title"> Post </div> 		
		<div class="posted-by">Category</div>
		<div class="replies">Replies</div>
		<div class="posted-time">Time</div>
	</div>';
	$count = 0;
	$cat_sql = "SELECT cat_name, cat_id FROM categories";
	$categories = mysqli_query($connection, $cat_sql);
	while($cat = mysqli_fetch_assoc($categories)) {
		
		$topicsql = "SELECT * FROM topics WHERE topic_cat = '".$cat['cat_id']."' AND topic_by = ".$_GET['id'];
		$topics = mysqli_query($connection, $topicsql);
		if(mysqli_num_rows($topics) == 0) {
			if($count > 0) {
			break(1);
			} else {
		echo '	<div class="text-column">
				<div class="wrapper">
			<p><span style="color: #D6D7E6;"><strong><span style="float: right; margin-right: 7.5em; font-family: '.'Overwatch'.'; font-size: 2em;">'.$other['user_name'].' has not made any posts yet</span></strong></span></p>
		</div>
			</div>'; break;
			}
		} else {
		while($topic = mysqli_fetch_assoc($topics)) {
				echo'
	
		<a class="topicLink" href="newTopic.php?id='.$topic['topic_id'].'">									   
		<div style="margin-bottom: 0em; margin-right: 5em;float: right; width: 1200px;" class="line">';
		$sql = "SELECT SUM(like_or_dislike) AS score FROM likes, posts, topics WHERE topics.topic_id = ".$topic['topic_id']." AND posts.post_id = likes.post_id AND posts.post_topic = topics.topic_id AND posts.post_date = topics.topic_date";
				$scoreQuery = mysqli_query($connection, $sql);
				$score = mysqli_fetch_assoc($scoreQuery);
				echo '<a class="topicLink" href="newTopic.php?id='.$topic['topic_id'].'">	';
				if($score['score'] > 0) {
					echo'<div class="replies"><img style="width: 16px; height: 16px;" src="images/like-true.png" />'.$score['score'].'</div>';
				} else if($score['score'] < 0) {
					echo'<div class="replies"><img style="width: 16px; height: 16px;" src="images/dislike-true.png" />'.$score['score'].'</div>';
				} else {
					echo'<div class="replies"><img style="width: 16px; height: 16px;" src="images/like.png" />0</div>';
				
				}
			echo '<div style="width: 50%;" class="post-title">'.$topic['topic_subject'].'</div>';	
		echo '<div style="margin-left: 0.25em;" class="posted-by">'.$cat['cat_name'].'</div>';
				$replysql = "SELECT COUNT(post_id) AS replies FROM posts WHERE post_topic = '".$topic['topic_id']."'";
					$replies = mysqli_query($connection, $replysql);
					$reply = mysqli_fetch_assoc($replies);
					echo '<div class="replies"><img class="reply-icon" src="images/reply-icon.png"/>'.$reply['replies'].'</div>

			<div style="margin-left: 0.75em;" class="posted-time">'.date('M. d, h:i A', strtotime($topic['topic_date'])).'</div>';
		echo '</div></a>';
		$count++;
		}
		}
	}
		}
	}

?>
</section>
</body>


</html>