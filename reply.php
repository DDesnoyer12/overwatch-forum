<?php
//create_cat.php
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

if($_SERVER['REQUEST_METHOD'] != 'POST')
{
    //someone is calling the file directly, which we don't want
    echo 'This file cannot be called directly.';
}
else
{
    //check for sign in status
    if(!isset($_SESSION['signed_in']) || !$_SESSION['signed_in'])
    {
        echo '<h1 style="width: 90%; text-align: center; font-family: '.'Overwatch'.'; color: #D6D7E6; font-size: 2.5em;">You must be <a style="color: orange;"href="signin.php">signed in</a> to reply.<h1>';
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