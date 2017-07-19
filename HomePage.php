<?php
session_start();
if(!isset($_SESSION['sid']))
{
header('Location:login.php');
}
$id=$_SESSION['sid'];

?>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>My mail server</title>
<style>
	a{text-decoration:none}
	a:hover{ background-color:#00CC66}
	#atop{margin-left:50}
	a{font-color:black}
</style>
<link rel="stylesheet" href="css/style1.css" media="all">
</head>

<body>
<div id="mainbody" style="border:0px groove pink;">
<table width="100%" border="0.5" align="center" style="background-image:url('theme/<?php
		@$conTheme=$_REQUEST['conTheme'];
		if($conTheme)
		{
			$fo=fopen("userImages/$id/theme","w");
			fwrite($fo,$conTheme);
		}
			@$f=fopen("userImages/$id/theme","r");
			@$fr=fread($f, filesize("userImages/$id/theme"));
			echo $fr;
			?>');">
  
  <tr>
    <td height="115" colspan="3" align="center">
	<div  style="float:left;">
	<?php
	include_once('connection.php');
	error_reporting(1);
	
	$chk=$_GET['chk'];
	if($chk=="logout")
	{
	unset($_SESSION['sid']);
	header('Location:index.php');
	}
	$r=mysql_query("select * from userinfo where email='{$_SESSION['sid']}'");
	
	$row=mysql_fetch_object($r);
	@$file=$row->image;
	//echo $file;
	echo "<img alt='image not upload' src='userImages/$id/$file' height='120' width='120'/>";
?></div>
	
	<div style="float:left;margin-left:350px;padding-top:40px;font-size:25px;text-align:center;color:black "> Welcome in mail System
	 </div>
 	  </td>
  </tr>
  <tr>
    <td height="38" colspan="3"><div id ="menu">
		<a style="margin-left:50px;color:black"  href="HomePage.php?chk=chngthm">CHANGE THEME</a>
		<a style="margin-left:50px;color:black"  href="HomePage.php?chk=chngPass">CHANGE PASSWORD</a>
		
		<a style="margin-left:50px;color:black" href="HomePage.php?chk=vprofile">EDIT YOUR PROFILE</a>
		
		<a style="margin-left:50px;color:black" href="HomePage.php?chk=updnews">UPDATE LATEST NEWS</a>
		<a style="margin-left:50px;color:black" href="HomePage.php?chk=shownews">SHOW LATEST NEWS</a>
		<a style="margin-left:50px;color:black" href="login.php?chk=logout">LOGOUT</a>
		
	</td></div>
  </tr>
  <tr>
    <td width="158" height="572" valign="top">
	<div style="margin-top:50px"><a href="HomePage.php?chk=compose" style="color:black;">COMPOSE</a><br/><br/>
	<a href="HomePage.php?chk=inbox" style="color:black;" >INBOX</a><br/><br/>
	<a href="HomePage.php?chk=sent" style="color:black;">SENT</a><br/><br/>
	<!--<a href="HomePage.php?chk=trash">TRASH</a><br/><br/>-->
	<a href="HomePage.php?chk=draft" style="color:black;">DRAFT</a>
	
	</div>
	</td>
    <td width="660" valign="top">
			
			
		<?php
		@$id=$_SESSION['sid'];
		@$chk=$_REQUEST['chk'];
			//if($chk=="vprofile")
			//{
			//include_once("editProfile.php");
			//}
			if($chk=="compose")
			{
			include_once('compose.php');
			}
			if($chk=="sent")
			{
			include_once('sent.php');
			}
			if($chk=="inbox")
			{
			include_once('inbox.php');
			}
			if($chk=="setting")
			{
			include_once('setting.php');
			}
			if($chk=="chngPass")
			{
			include_once('chngPass.php');
			}
			if($chk=="chngthm")
			{
			include_once('chngthm.php');
			}
			if($chk=="draft")
			{
			include_once('draft.php');
			}
			
			if($chk=="updnews")
			{
			include_once('latestupd.php');
			}
			if($chk=="shownews")
			{
			include_once('latestupdDisp.php');
			}

			
		?>
		
		<!--inbox -->
		<?php
		$id=$_SESSION['sid'];
		@$coninb=$_GET['coninb'];
			
			if($coninb)
			{
			$sql="SELECT * FROM usermail where rec_id='$id' and mail_id='$coninb'  ";
$dd=mysql_query($sql);
			$row=mysql_fetch_object($dd);
			echo "Subject :".$row->sub."<br/>";
			echo "Message :".$row->msg."<br/>";
			
			
			}
			
			
	@$cheklist=$_REQUEST['ch'];
	if(isset($_GET['delete']))
	{
		foreach($cheklist as $v)
		{
		
		$d="DELETE from usermail where mail_id='$v'";
		mysql_query($d);
		}
		echo "msg deleted";
	}
			
		?>
		
		
		
	<!--sent box-->
	<?php
		$id=$_SESSION['sid'];
		@$consent=$_GET['consent'];
			
			if($consent)
			{
			$sql="SELECT * FROM usermail where sen_id='$id' and mail_id='$consent'";
$dd=mysql_query($sql);
			$row=mysql_fetch_object($dd);
			echo "Subject :".$row->sub."<br/>";
			echo "Message :".$row->msg;
			}
			
			
	@$cheklist=$_REQUEST['ch'];
	if(isset($_GET['delete']))
	{
		foreach($cheklist as $v)
		{
		$d="DELETE from usermail where mail_id='$v'";
		mysql_query($d);
		}
		echo "msg deleted";
	}
			
		?>	
		
	</td>
    <td width="135">&nbsp;</td>
  </tr>
  <tr>
    <td height="47" colspan="3">
	
	</td>
  </tr>
  
</table>
</div>
</body>
</html>
