<?php
//create_cat.php
if(!isset($_SESSION)) {
	SESSION_START();
}
include 'connect.php';
$category = $_GET['id'];

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
<body>
<?php
$sql = "SELECT cat_name FROM categories WHERE cat_id = '".mysqli_real_escape_string($connection, $category)."'";
$result = mysqli_query($connection, $sql);
$row = mysqli_fetch_assoc($result);
echo '<h1 class="cat_title" style="font-family: '.'Overwatch'.'; color:#D6D7E6; font-size: 5em; text-align: center;">New topic for '.$row['cat_name'].'</h1>';
if(!isset($_SESSION['signed_in']) || (isset($_SESSION['signed_in']) && $_SESSION['signed_in'] == false))
{
    //the user is not signed in
	echo '<h1 class="cat_title" style="margin-top: 2em; font-family: '.'Overwatch'.'; color:#D6D7E6; font-size: 2.5em; text-align: center;">Sorry, you have to be <a style="font-size: 1em; color: orange; font-family: '.'Overwatch'.'"; href="signin.php">signed in </a> to create a topic.</h1>';

}
else
{
    //the user is signed in
    if($_SERVER['REQUEST_METHOD'] != 'POST')
    {   
        //the form hasn't been posted yet, display it
        //retrieve the categories from the database for use in the dropdown
        $sql = "SELECT
                    *
                FROM
                    categories";
         
        $result = mysqli_query($connection, $sql);
         
        if(!$result)
        {
            //the query failed, uh-oh :-(
            echo 'Error while selecting from database. Please try again later.';
        }
        else
        {
            if(mysqli_num_rows($result) == 0)
            {
                //there are no categories, so a topic can't be posted
                if($_SESSION['user_level'] == 1)
                {
                    echo 'You have not created categories yet.';
                }
                else
                {
                    echo 'Before you can post a topic, you must wait for an admin to create some categories.';
                }
            }
            else
            {
         
                echo '<form style="text-align: center; width: 100%;" method="post" action="">
                    <h2 class="cat_title" style="font-family: '.'Overwatch'.'; color: orange; font-size: 3em;">Subject:</h2> <input type="text" placeholder="Subject" name="topic_subject" />';
                     
                echo '<h2 class="cat_title" style="font-family: '.'Overwatch'.'; color: orange; font-size: 3em;">Message:</h2><textarea placeholder="Message" name="post_content"/></textarea>
                    <input type="submit" value="Create topic" />
                 </form>';
            }
        }
    }
    else
    {
        //start the transaction
        $query  = "BEGIN WORK;";
        $result = mysqli_query($connection, $query);
         
        if(!$result)
        {
            //Damn! the query failed, quit
            echo 'An error occured while creating your topic. Please try again later.';
        }
        else
        {
     
            //the form has been posted, so save it
            //insert the topic into the topics table first, then we'll save the post into the posts table
            $sql = "INSERT INTO 
                        topics(topic_subject,
                               topic_date,
                               topic_cat,
                               topic_by)
                   VALUES('" . mysqli_real_escape_string($connection, $_POST['topic_subject']) . "',
                               NOW(),
                               " . mysqli_real_escape_string($connection, $category) . ",
                               " . $_SESSION['user_id'] . "
                               )";
                      
            $result = mysqli_query($connection, $sql);
            if(!$result)
            {
                //something went wrong, display the error
                echo 'An error occured while inserting your data. Please try again later.' . mysqli_error($connection);
                $sql = "ROLLBACK;";
                $result = mysqli_query($connection, $sql);
            }
            else
            {
                //the first query worked, now start the second, posts query
                //retrieve the id of the freshly created topic for usage in the posts query
                $topicid = mysqli_insert_id($connection);
                 
                $sql = "INSERT INTO
                            posts(post_content,
                                  post_date,
                                  post_topic,
                                  post_by)
                        VALUES
                            ('" . mysqli_real_escape_string($connection, $_POST['post_content']) . "',
                                  NOW(),
                                  " . $topicid . ",
                                  " . $_SESSION['user_id'] . "
                            )";
                $result = mysqli_query($connection, $sql);
                 
                if(!$result)
                {
                    //something went wrong, display the error
                    echo 'An error occured while inserting your post. Please try again later.' . mysqli_error($connection);
                    $sql = "ROLLBACK;";
                    $result = mysqli_query($connection, $sql);
                }
                else
                {
                    $sql = "COMMIT;";
                    $result = mysqli_query($connection, $sql);
                     
                    //after a lot of work, the query succeeded!
					echo '<h1 class="cat_title" style="margin-top: 2em; font-family: '.'Overwatch'.'; color:orange; font-size: 2.5em; text-align: center;"> You have successfully created <a style="font-size: 1em;font-family: '.'Overwatch'.'"; href="newTopic.php?id='. $topicid . '">your new topic</a></h1>';

                }
            }
        }
    }
}
 
?>
</body>