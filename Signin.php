<?php
//signin.php
include 'connect.php';
?>
<style>
input[type=text], input[type=password], select {
    width: 50%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
textarea {
    width: 50%;
    height: 150px;
    padding: 12px 20px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    background-color: #f8f8f8;
    font-size: 16px;
    resize: none;
}

input[type=submit] {
	text-align: center;
    width: 50%;
    background-color: orange;
    color: white;
    padding: 14px 20px;
	margin-top: 5em;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}


</style>
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
 
echo '<h1 class="cat_title" style="font-family: '.'Overwatch'.'; color:#D6D7E6; font-size: 5em; text-align: center;">Sign In</h1>';
 
//first, check if the user is already signed in. If that is the case, there is no need to display this page
if(isset($_SESSION['signed_in']) && $_SESSION['signed_in'] == true)
{
    
echo '<h1 class="cat_title" style="margin-top: 2em; font-family: '.'Overwatch'.'; color:#D6D7E6; font-size: 2.5em; text-align: center;">You are already signed in. <a style="color: orange;" href="signout.php">Click here if you wish to sign out.</a></h1>';
}
else
{
    if($_SERVER['REQUEST_METHOD'] != 'POST')
    {
        /*the form hasn't been posted yet, display it
          note that the action="" will cause the form to post to the same page it is on */
         
                echo '<form style="text-align: center; width: 100%;" method="post" action="">
                    <h2 class="cat_title" style="font-family: '.'Overwatch'.'; color: orange; font-size: 3em;">Username:</h2> <input type="text" placeholder="Username" name="user_name" />';
                     
                echo '<h2 class="cat_title" style="font-family: '.'Overwatch'.'; color: orange; font-size: 3em;">Password:</h2><input type="password" placeholder="Password" name="user_pass"/>
                    <input type="submit" value="Sign In" />
                 </form>';
    }
    else
    {
        /* so, the form has been posted, we'll process the data in three steps:
            1.  Check the data
            2.  Let the user refill the wrong fields (if necessary)
            3.  Varify if the data is correct and return the correct response
        */
        $errors = array(); /* declare the array for later use */
         
        if(!isset($_POST['user_name']))
        {
            $errors[] = 'The username field must not be empty.';
        }
         
        if(!isset($_POST['user_pass']))
        {
            $errors[] = 'The password field must not be empty.';
        }
         
        if(!empty($errors)) /*check for an empty array, if there are errors, they're in this array (note the ! operator)*/
        {
            echo 'Uh-oh.. a couple of fields are not filled in correctly..';
            echo '<ul>';
            foreach($errors as $key => $value) /* walk through the array so all the errors get displayed */
            {
                echo '<li>' . $value . '</li>'; /* this generates a nice error list */
            }
            echo '</ul>';
        }
        else
        {
            //the form has been posted without errors, so save it
            //notice the use of mysql_real_escape_string, keep everything safe!
            //also notice the sha1 function which hashes the password
            $sql = "SELECT 
                        user_id,
                        user_name,
                        user_level,
						user_icon
                    FROM
                        users
                    WHERE
                        user_name = '" . mysqli_real_escape_string($connection, $_POST['user_name']) . "'
                    AND
                        user_pass = '" . sha1($_POST['user_pass']) . "'";
                         
            $result = mysqli_query($connection, $sql);
            if(!$result)
            {
                //something went wrong, display the error
                echo 'Something went wrong while signing in. Please try again later.';
                //echo mysql_error(); //debugging purposes, uncomment when needed
            }
            else
            {
                //the query was successfully executed, there are 2 possibilities
                //1. the query returned data, the user can be signed in
                //2. the query returned an empty result set, the credentials were wrong
			
                if(mysqli_num_rows($result) == 0)
                {
                    echo '<h1 class="cat_title" style="font-family: '.'Overwatch'.'; color:orange; font-size: 3em; text-align: center;">You have supplied a wrong username and/or password.</h1>';
					 echo '<form style="text-align: center; width: 100%;" method="post" action="">
                    <h2 class="cat_title" style="font-family: '.'Overwatch'.'; color: orange; font-size: 3em;">Username:</h2> <input type="text" placeholder="Username" name="user_name" />';
                     
                echo '<h2 class="cat_title" style="font-family: '.'Overwatch'.'; color: orange; font-size: 3em;">Password:</h2><input type="password" placeholder="Password" name="user_pass"/>
                    <input type="submit" value="Sign In" />
                 </form>';
                }
                else
                {
					if(!isset($_SESSION)) 
					{ 
						session_start(); 
					} 
                    //set the $_SESSION['signed_in'] variable to TRUE
                    $_SESSION['signed_in'] = true;
                     
                    //we also put the user_id and user_name values in the $_SESSION, so we can use it at various pages
                    while($row = mysqli_fetch_assoc($result))
                    {
                        $_SESSION['user_id']    = $row['user_id'];
                        $_SESSION['user_name']  = $row['user_name'];
                        $_SESSION['user_level'] = $row['user_level'];
						$_SESSION['user_icon'] = $row['user_icon'];
                    }
                     echo '<h1 class="cat_title" style="margin-top: 2em; font-family: '.'Overwatch'.'; color:orange; font-size: 2.5em; text-align: center;">Welcome, '.$_SESSION['user_name'].'! <br/><a style="font-size: 1.5em;font-family: '.'Open Sans'.'"; href="newIndex.php">Proceed to forums</a></h1>';
					
                }
            }
        }
    }
}
 
include 'footer.php';
?>