<?php
include 'connect.php';
if(!isset($_SESSION)) {
	SESSION_START();
}
?>

<html>
<head lang = "en-US">
	<meta charset="utf-8">
	
	<title>Overwatch Forum</title>
	<link rel="stylesheet" href="styles/reset.css" />
	<link rel="stylesheet" href="newHero.css" />
	<link rel="icon" href="images/favicon.png" />
	
	<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Open+Sans" />
</head>
<?php
include 'includes/final-header.php';
?>
<section>
<?php
$sql = "SELECT
    topic_id,
    topic_subject
FROM
    topics
WHERE
    topics.topic_id = '" . mysqli_real_escape_string($connection, $_GET['id'])."'";
 
$result = mysqli_query($connection, $sql);
 
if(!$result)
{
    echo '<h1>The topics could not be displayed, please try again later.' . mysqli_error($connection).'<h1>';
}
else
{
    if(mysqli_num_rows($result) == 0)
    {
		echo '<h1 style="width: 90%; text-align: center; font-family: '.'Overwatch'.'; color: #D6D7E6; font-size: 2.5em;">These topics could not be displayed, please try again later.' . mysqli_error($connection).'<h1>';

    } else {
		$sql = "SELECT
    posts.post_topic,
    posts.post_content,
    posts.post_date,
    posts.post_by,
	posts.post_id,
    users.user_id,
    users.user_name,
	users.user_icon
FROM
    posts
LEFT JOIN
    users
ON
    posts.post_by = users.user_id
WHERE
    posts.post_topic = '" . mysqli_real_escape_string($connection, $_GET['id'])."'";
         
        $result = mysqli_query($connection, $sql);
         
        if(!$result)
        {
			echo '<h1 style="width: 90%; text-align: center; font-family: '.'Overwatch'.'; color: #D6D7E6; font-size: 2.5em;">The posts could not be displayed, please try again later' . mysqli_error($connection).'<h1>';
            
        }
        else
        {
            if(mysqli_num_rows($result) == 0)
            {
				echo '<h1 style="width: 90%; text-align: center; font-family: '.'Overwatch'.'; color: #D6D7E6; font-size: 2.5em;">There are no posts in this topic yet.' . mysqli_error($connection).'<h1>';
            
            }
            else
            {
				while($row = mysqli_fetch_assoc($result)) {
					if(!isset($_SESSION) || !isset($_SESSION['signed_in']) || $_SESSION['signed_in'] == false) {
						echo '
						<div class="topicBox">
						<div style="width: 3%; vertical-align: middle;" class="like-section">
							<a href="signin.php"><button type="submit" class="likebutton"></button></a>
							</form>';
							$totalquery = "SELECT SUM(like_or_dislike) AS total FROM likes WHERE post_id = ".$row['post_id'];
							$total = mysqli_query($connection, $totalquery);
							$num = mysqli_fetch_assoc($total);
							if($num['total'] == NULL) {
								echo '<p style="color: #D6D7E6; font-family: '."Open Sans".'; text-align: center;">0</p>';
							
							}
							echo '<p style="color: #D6D7E6; font-family: '."Open Sans".'; text-align: center;">'.$num['total'].'</p>';
							
							echo '<a href="signin.php"><button class="dislikebutton" type="submit"></button></a>';							
						
						
					} else {
					echo '
						<div class="topicBox"><div style="width: 3%; vertical-align: middle;" class="like-section">
							<form class="hiddenlike" name="like" method="post" action="like.php">
							<input type="hidden" name="user_id" value='.$_SESSION['user_id'].' />
							<input type="hidden" name="post_id" value='.$row['post_id'].' />
							<input type="hidden" name="type" value=1 />
							<input type="hidden" name="topic_id" value='.$_GET['id'].'/>';
							
							$likequery = "SELECT * FROM likes WHERE user_id = ".$_SESSION['user_id']." AND post_id = ".$row['post_id'];
							$status = mysqli_query($connection, $likequery);
							if(mysqli_num_rows($status) == 0) {
							echo '<button class="likebutton" type="submit"></button>';
							} else {
								$temp = mysqli_fetch_assoc($status);
								if($temp['like_or_dislike'] == 1) {
									echo '<button class="likebutton-true" type="submit"></button>';
								} else {
									echo '<button class="likebutton" type="submit"></button>';
								}
							}
							echo '
							</form>';
							$totalquery = "SELECT SUM(like_or_dislike) AS total FROM likes WHERE post_id = ".$row['post_id'];
							$total = mysqli_query($connection, $totalquery);
							$num = mysqli_fetch_assoc($total);
							if($num['total'] == NULL) {
								echo '<p style="color: #D6D7E6; font-family: '."Open Sans".'; text-align: center;">0</p>';
							
							}
							echo '<p style="color: #D6D7E6; font-family: '."Open Sans".'; text-align: center;">'.$num['total'].'</p>';
							echo '<form class="hiddenlike" name="like" method="post" action="like.php">
							<input type="hidden" name="user_id" value='.$_SESSION['user_id'].' />
							<input type="hidden" name="post_id" value='.$row['post_id'].' />
							<input type="hidden" name="type" value=-1 />
							<input type="hidden" name="topic_id" value='.$_GET['id'].'/>';
							$likequery = "SELECT * FROM likes WHERE user_id = ".$_SESSION['user_id']." AND post_id = ".$row['post_id'];
							$status = mysqli_query($connection, $likequery);
							if(mysqli_num_rows($status) == 0) {
							echo '<button class="dislikebutton" type="submit"></button>';
							} else {
								$temp = mysqli_fetch_assoc($status);
								if($temp['like_or_dislike'] == -1) {
									echo '<button class="dislikebutton-true" type="submit"></button>';
								} else {
									echo '<button class="dislikebutton" type="submit"></button>';
								}
							
							}
					}
							echo '</form>
							</div>
							<div class="user-land">
							<div> <img class="user-img" src="images/user-icons/'.$row['user_icon'].'.png" />
							</div> 
							<div class="post-user"> 
							<a style="color: orange;" href="Account.php?id='.$row['user_id'].'">'.$row['user_name'].'</a>
							</div>
							<div class="post-time">
							'.date('M. d, h:i A', strtotime($row['post_date'])).'
							</div>
							
							</div>
							<div class="post-content">
								<p>
								'.$row['post_content'].'
								</p>
							</div>';
							if(isset($_SESSION['user_level']) && $_SESSION['user_level'] == 1) {
								echo '<div title="Delete" class="delete"><a href="deletepost.php?id='.$row['post_id'].'"><img class="delete-icon" src="images/delete.png" /></a></div>
								</div>';
							}
						echo '</div>';				
				}
			}

         
               
                echo '<div style="text-align: center;">';
				echo '<form method="post" action="reply.php?id='.$_GET['id'].'">';
                echo '<textarea placeholder="Leave a Reply" name="reply-content"/></textarea>
                    <input type="submit" value="Reply" />
                 </form></div>';
	}
}
}

?>

</section>
</html>