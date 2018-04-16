<?php
//create_cat.php
include 'connect.php';
include 'header.php';
 
//first select the category based on $_GET['cat_id']
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
    echo 'The topics could not be displayed, please try again later.' . mysqli_error($connection);
}
else
{
    if(mysqli_num_rows($result) == 0)
    {
        echo 'This topic does not exist.';
    }
    else
    {
        //display category data
        //while($row = mysqli_fetch_assoc($result))
       // {
       //     echo '<h2>Topics in ′' . $row['cat_name'] . '′ category</h2>';
       // }
     
        //do a query for the topics
        $sql = "SELECT
    posts.post_topic,
    posts.post_content,
    posts.post_date,
    posts.post_by,
    users.user_id,
    users.user_name
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
            echo 'The posts could not be displayed, please try again later.';
        }
        else
        {
            if(mysqli_num_rows($result) == 0)
            {
                echo 'There are no posts in this topic yet.';
            }
            else
            {
                //prepare the table
                echo '<table border="1">
						<tr>
						<th style="text-align: center;" colspan="2">Subject</th>
						</tr>';
         
                     
                while($row = mysqli_fetch_assoc($result))
                {               
                    echo '<tr>';
                        echo '<td class="rightpart">';
                            echo '<h3>'.$row['user_name'].'</h3>';
                            echo date('d-m-Y', strtotime($row['post_date']));
                        echo '</td>';
                        echo '<td class="leftpart">';
							echo '<p>'.$row['post_content'].'</p>';
                        echo '</td>';
                    echo '</tr>';
                }
				echo '<tr>';
					echo '<td colspan="2">
												
	<form method="post" action="reply.php?id='.$_GET['id'].'">
    <textarea name="reply-content"></textarea>
    <input type="submit" value="Submit reply" />
	</form>
					</td>';
				echo '</tr></table>';
            }

        }

    }

}

 
include 'footer.php';
?>