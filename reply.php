<?php
//create_cat.php
include 'connect.php';
if(!isset($_SESSION)) {
	SESSION_START();
}
 
if($_SERVER['REQUEST_METHOD'] != 'POST')
{
    //someone is calling the file directly, which we don't want
    echo 'This file cannot be called directly.';
}
else
{
    //check for sign in status
    if(!$_SESSION['signed_in'])
    {
        echo 'You must be signed in to post a reply.';
    }
    else
    {
        //a real user posted a real reply
        $sql = "INSERT INTO 
                    posts(post_content,
                          post_date,
                          post_topic,
                          post_by) 
                VALUES ('" . $_POST['reply-content'] . "',
                        NOW(),
                        " . mysqli_real_escape_string($connection, $_GET['id']) . ",
                        " . $_SESSION['user_id'] . ")";
                         
        $result = mysqli_query($connection, $sql);
                         
        if(!$result)
        {
            echo 'Your reply has not been saved, please try again later.';
			
			header("Location: {$_SERVER["HTTP_REFERER"]}");
        }
        else
        {
            echo 'Your reply has been saved, check out <a href="topic.php?id=' . htmlentities($_GET['id']) . '">the topic</a>.';
		
			header("Location: {$_SERVER["HTTP_REFERER"]}");
		}
    }
}
 
include 'footer.php';
?>