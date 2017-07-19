<?php
session_start();
error_reporting(1);
include_once('connection.php');
if(isset($_POST['signIn']))
{
	if($_POST['eid']=="" || $_POST['pwd']=="")
	{
	$err="fill your id and passwrod first";
	}
	else
	{
	$d=mysql_query("SELECT * FROM userinfo where email='{$_POST['eid']}'");
	$row=mysql_fetch_object($d);
		$fid=$row->email;
		$fpass=$row->password;
		if($fid==$_POST['eid'] && $fpass==$_POST['pwd'])
		{
		$_SESSION['sid']=$_POST['eid'];
		header('location:HomePage.php');
		}
		else
		{
		$err="invalid id or pass";
		}
	}
}
?>
<html>
<head>
<title>E-mail System</title>
<link rel="stylesheet" href="css/style1.css" media="all">
<link rel="shortcut icon" href="logo.jpg">
</head>
<body>
<div id="header">
<h1>E-mail System</h1>
</div>

<form  method="POST" name="signup for form">
<div id="BCA">
 <form  method="post">
<fieldset>
     <legend>Login </legend> 
  
  <div>
  <font color="#FF0000"><?php echo $err; ?></font>
   
		<input type="email" name="eid" placeholder="abc@gmail.com" required />
	</div>
  
  <div>
  
    
			<input type="password" name="pwd" placeholder="Password" required/>
	
  </div>
  <fieldset>
	<input type="submit" value="SignIn" name="signIn"/>
	<a href="regis.php?chk=4">SignUp</a>
	</div>
 


    

</body>
</html>