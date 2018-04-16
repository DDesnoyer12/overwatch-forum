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
			
			echo '<h1 class="cat_title" style="font-family: '.'Overwatch'.'; color:#D6D7E6; font-size: 5em; text-align: center;">Topics in \''.$row['cat_name'].'\'</h1>';
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
		<div class="post-title"> Post </div> 
		<div class="replies">Replies</div>
		<div class="posted-by">Posted By</div>
		<div class="posted-time">Time</div>
	</div>';
                //prepare the table
      
                     
                while($row = mysqli_fetch_assoc($result))
                {               
		//	if($row['topic_id'] != NULL) {
                    				   echo '   

		<a href="newTopic.php?id='.$row['topic_id'].'">									   
		<div class="line">
			<div class="post-title">'.$row['topic_subject'].'</div> 
			<div class="replies"><img class="reply-icon" src="images/reply-icon.png"/>0</div>
			<div class="posted-by">'.$row['user_name'].'</div>
			<div class="posted-time">'.date('M. d, h:i A', strtotime($row['topic_date'])).'</div>';
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