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
					echo '
						<div class="line">
							<div class="user-land">
							<div> <img class="user-img" src="images/user-icons/'.$row['user_icon'].'.png" />
							</div> 
							<div class="post-user"> 
							'.$row['user_name'].'
							</div>
							<div class="post-time">
							'.date('M. d, h:i A', strtotime($row['post_date'])).'
							</div>
							</div>
							<div class="post-content">
								<p>
								'.$row['post_content'].'
								</p>
							</div>
						</div>';
					
				}
			}

         
               
                echo '<div style="text-align: center;">';
				echo '<form method="post" action="reply.php?id='.$_GET['id'].'">';
                echo '<textarea placeholder="Leave a Reply" name="reply-content"/></textarea>
                    <input type="submit" value="Reply" />
                 </form>';
				 echo '</div>';
	}
}
}

?>

</section>
</html>