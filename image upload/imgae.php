<?php
mysql_connect("localhost","root","");
mysql_select_db("10am");

$f= $_FILES["file"]["name"];
if(@$_POST['sub'])
{
mysql_query("INSERT INTO image values('','$f')");

move_uploaded_file($_FILES["file"]["tmp_name"], "upload/" . $_FILES["file"]["name"]);
	 //echo "Upload: " .$_FILES["file"]["name"] . "<br />";
     //echo "Type: " . $_FILES["file"]["type"] . "<br />";
     //echo "Size: " . ($_FILES["file"]["size"] / 1024) . " Kb<br />";
     //echo "Stored in: " . $_FILES["file"]["tmp_name"];
echo "image stored";
}


if($_POST['show'])
{

$r=mysql_query("select * from image where img_id='{$_POST['id']}'");
while(list$row=mysql_fetch_object($r);
	$file=$row->imagepath;
	
	
		echo "<img src='upload/$file' height='100' width='100'>";

}



?>

<form method="post" enctype="multipart/form-data">
Upload image id<input type="text" name="id"/><br/>
Upload your img<input type="file" name="file"/><br/>
<input type="submit" name="sub" value="save">
<input type="submit" name="show" value="show">
</form>