<?php
define('DBHOST', 'localhost');
define('DBNAME', 'final_project');
define('DBUSER', 'root');
define('DBPASS', '');
$connection = mysqli_connect(DBHOST, DBUSER, DBPASS, DBNAME);
$error = mysqli_connect_error();
if($error != null) {
$output = "<p>Unable to connect to database</p>" . $error;
exit($output);
}

//$postid = mysqli_real_escape_string($_POST['postid']);
//$author = mysqli_real_escape_string($_POST['author']);
//$comment = mysqli_real_escape_string($_POST['comment']);
$postid = $_POST['postid'];
$author = $_POST['author'];
$comment = $_POST['comment'];
$sql = "INSERT INTO comments (PageID, Author, Comment) VALUES ('$postid', '$author', '$comment')";
//$sql = "INSERT INTO comments VALUES ('$postid', '$author', '$comment')";
//$sql = "INSERT INTO comments VALUES ('Ana', 'Daniel', 'Ana is cool')";
mysqli_query($connection, $sql);
//mysqli_query($connection, "INSERT INTO comments VALUES ($PostID, $Author, $Comment)");
header("Location: {$_SERVER["HTTP_REFERER"]}");
?>