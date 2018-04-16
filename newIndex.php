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
<body>
<section>
<h1 style="font-family: 'Overwatch'; color:#D6D7E6; font-size: 5em; width: 100%; text-align: center;";>Welcome to the Overwatch Forum!</h1>
<?php
$sql = "SELECT
            *
        FROM
            categories
			";
 
$result = mysqli_query($connection, $sql);
if(!$result)
{
	echo mysqli_error($connection);
    echo 'The categories could not be displayed, please try again later.';
}
else
{
    if(mysqli_num_rows($result) == 0)
    {
        echo 'No categories defined yet.';
    }
    else
    {
		while($row = mysqli_fetch_assoc($result))
        {        echo '      
	<a href="newCategory.php?id='.$row['cat_id'].'">
	<div class="line">
<div class="element1">  <img class="icon" src="https://us.battle.net/forums/static/images/logos/logo-small-overwatch.png"/> </div> 
<div class="element2">'.$row['cat_name'].' </div> 
<div class="element3">'.$row['cat_description'].'</div>

</div></a>
';
		/*echo'
<div style="height: auto; width: 1000px; margin-left: 321px; margin-bottom: 2em;" class="container">

<a href="newCategory.php?id='.$row['cat_id'].'">
<div class="innercontainer">
<div class="wrapper">

	<div class="ability-wrapper">
	<div class="cat-icon">
		<figure>
			<img style="margin: 0; padding: 0;" src="images/forum-icon.png"/>
		</figure>
	</div>
	<div class="text-column-ability">
		<h3 class="aname">'.$row['cat_name'].'</h3>
		<p style="text-align: center; font-size: 1.5em;" class="ability-description"><span><span>'.$row['cat_description'].'</span></p>
	
	</div>
	</div>
	
</div>
</div></a>
</div>';	
			*/
		}
	}
}

?>
</section>
</body>