<?php
//create_cat.php
include 'connect.php';
include 'header.php';
 
$sql = "SELECT
            cat_id,
			cat_name,
			cat_description,
			topic_date AS recent,
			topic_cat,
			topic_subject,
			topic_by,
			topic_id,
			user_name
        FROM
            categories, topics, users
		WHERE topic_cat = cat_id AND topic_by = user_id
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
        //prepare the table
        echo '<table border="1">
              <tr>
                <th>Category</th>
                <th>Last topic</th>
              </tr>'; 
             
        while($row = mysqli_fetch_assoc($result))
        {               
            echo '<tr>';
                echo '<td class="leftpart">';
                    echo '<h3><a href="category.php?id='.$row['cat_id'].'">' . $row['cat_name'] . '</a></h3>' . $row['cat_description'];
                echo '</td>';
                echo '<td class="rightpart">';
                            echo '<a href="topic.php?id='.$row['topic_id'].'">'.$row['topic_subject'].'</a> by '.$row['user_name'].' on '.$row['recent'];
                echo '</td>';
            echo '</tr>';
        }
    }

}
 
include 'footer.php';
?>