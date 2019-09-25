<?php
//create_cat.php
include 'connect.php';
if(!isset($_SESSION)) {
	SESSION_START();
}
?>
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
 echo '<h1 class="cat_title" style="font-family: '.'Overwatch'.'; color:#D6D7E6; font-size: 5em; text-align: center;">Create a Category</h1>';
 
if($_SERVER['REQUEST_METHOD'] != 'POST')
{
    //the form hasn't been posted yet, display it
                echo '<form style="text-align: center; width: 100%;" method="post" action="">
                    <h2 class="cat_title" style="font-family: '.'Overwatch'.'; color: orange; font-size: 3em;">Subject:</h2> <input type="text" placeholder="Subject" name="cat_name" />';
                     
                echo '<h2 class="cat_title" style="font-family: '.'Overwatch'.'; color: orange; font-size: 3em;">Message:</h2><textarea placeholder="Message" name="cat_description"/></textarea>
                    <input type="submit" value="Create topic" />
                 </form>';
}
else
{
    //the form has been posted, so save it
    $sql = 'INSERT INTO categories (cat_name, cat_description)
       VALUES("' . mysqli_real_escape_string($connection, $_POST['cat_name']) . '",
             "' . mysqli_real_escape_string($connection, $_POST['cat_description']) . '")';
    $result = mysqli_query($connection, $sql);
    if(!$result)
    {
        //something went wrong, display the error
        echo 'Error' . mysqli_error($connection);
    }
    else
    {
		 echo '<h1 class="cat_title" style="font-family: '.'Overwatch'.'; color:orange; font-size: 5em; text-align: center;"><a style="color: orange;" href="newIndex.php">New category successfully added.</a></h1>';

    }
}
?>