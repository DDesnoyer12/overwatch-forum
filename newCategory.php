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
$sql = "SELECT * FROM categories WHERE cat_id = '".mysqli_real_escape_string($connection, $_GET['id'])."'";

$result = mysqli_query($connection, $sql);

if(!$result) {
	echo '
	<div class="container">
	<div class="innercontainer">
	<div class="wrapper">
		<div class="text-column">
			<p>This category could not be displayed, please try again later.</p>
		</div>
	
	</div>
	</div>
	</div>
	';
} else {
	if(mysqli_num_rows($result) == 0) {
		
			echo '
	<div class="container">
	<div class="innercontainer">
	<div class="wrapper">
		<div class="text-column">
			<p>This category does not exist.</p>
		</div>
	
	</div>
	</div>
	</div>
	';	
	} else {
		while($row = mysqli_fetch_assoc($result)) {
			
			echo '<h1 class="cat_title" style="font-family: '.'Overwatch'.'; color:orange; font-size: 5em; text-align: center;">'.$row['cat_name'].'</h1>';
			echo '<div style="margin-top: 1em; text-align: center;">
		<button class="newTopic" style=""><a href="create_topic.php?id='.$row['cat_id'].'">+ Create New Topic</a></button>
		</div>';
		}
		
		$sql = "SELECT  
                    topic_id,
                    topic_subject,
                    topic_date,
                    topic_cat,
					user_name
                FROM
                    topics, users
                WHERE
                    topic_cat = '" . mysqli_real_escape_string($connection, $_GET['id'])."'
				AND topic_by = user_id";
         
        $result = mysqli_query($connection, $sql);
         
		 if(!$result)
        {
            			echo '
	<div class="container">
	<div class="innercontainer">
	<div class="wrapper">
		<div class="text-column">
			<p>The posts in this category could not be displayed.</p>
		</div>
	
	</div>
	</div>
	</div>
	';	
        }
        else
        {
            if($result == NULL)
            {
				echo 'no posts';
            }
            else
            {
				   echo '      
	<div class="line">
		<div class="replies">Score</div>
		<div style="font-family: Open Sans; font-size: 1em;" class="post-title"> Post </div> 
		<div class="replies">Replies</div>
		<div class="posted-by">Posted By</div>
		<div class="posted-time">Time</div>
	</div>';
                //prepare the table
      
                     
                while($row = mysqli_fetch_assoc($result))
                {               
		
				$sql = "SELECT SUM(like_or_dislike) AS score FROM likes, posts, topics WHERE topics.topic_id = ".$row['topic_id']." AND posts.post_id = likes.post_id AND posts.post_topic = topics.topic_id AND posts.post_date = topics.topic_date";
				$scoreQuery = mysqli_query($connection, $sql);
				$score = mysqli_fetch_assoc($scoreQuery);
				echo '<a class="topicLink" href="newTopic.php?id='.$row['topic_id'].'">									   
				<div class="line">';
				if($score['score'] > 0) {
					echo'<div class="replies"><img style="width: 16px; height: 16px;" src="images/like-true.png" />'.$score['score'].'</div>';
				}  else if($score['score'] < 0) {
					echo'<div class="replies"><img style="width: 16px; height: 16px;" src="images/dislike-true.png" />'.$score['score'].'</div>';
				} else {
					echo'<div class="replies"><img style="width: 16px; height: 16px;" src="images/like.png" />0</div>';
				
				}
					echo'<div style="text-align: center;" class="post-title">'.$row['topic_subject'].'</div>'; 
					$replysql = "SELECT COUNT(post_id) AS replies FROM posts WHERE post_topic = '".$row['topic_id']."'";
					$replies = mysqli_query($connection, $replysql);
					$reply = mysqli_fetch_assoc($replies);
					echo '<div class="replies"><img class="reply-icon" src="images/reply-icon.png"/>'.$reply['replies'].'</div>';
					
					echo '<div style="margin-left: 0.75em;" class="posted-by">'.$row['user_name'].'</div>
					<div style="margin-left: 0.1em;" class="posted-time">'.date('M. d, h:i A', strtotime($row['topic_date'])).'</div>';
					if(isset($_SESSION['user_level']) && $_SESSION['user_level'] == 1) {
						echo '<div title="Delete" class="delete"><a href="deletetopic.php?id='.$row['topic_id'].'"><img class="delete-icon" src="images/delete.png" /></a></div>';
					}
				echo '</div></a>';
			//}
                }
            }
        }
	}
}


?>



</section>
</html>