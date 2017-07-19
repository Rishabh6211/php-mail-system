<?php
include_once('connection.php');

$id=$_SESSION['sid'];


$sql="SELECT * FROM usermail where rec_id='$id'";

$dd=mysql_query($sql);

echo "<div style='margin-left:10px;width:1100;height:auto;border:1px solid red;'>";

	echo "<table border='1' width='1100' >";
	echo "<tr><th>Check </th><th>Sender </th><th>Subject </th><th>Attachment</th><th>Date</th> </th></tr>";

	
	while(list($mid,$rid,$sid,$s,$m,$a,$d)=mysql_fetch_array($dd))
{
	
	echo "<tr>";
	echo "<form>";
	echo "<td><input type='checkbox' name='ch[]' value='$mid'/></td>";
	echo "<td>".$sid."</td>";
	echo "<td><a href='HomePage.php?coninb=$mid'>".$s."</a></td>";
	echo "<td><img src='attachment/".$a."' width='100' height='100' ;</td>";
	
	
	echo "<td>".$d."</td>";
	echo "</tr>";	
	}
	echo "</table>";
	
	
/*$ch=$_GET['ch'];
foreach($ch as $v)
{

}*/
	


?>
<input type='submit' value='Delete' name='delete'/>
</div></form>