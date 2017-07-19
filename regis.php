<?php
session_start();
include_once('connection.php');
error_reporting(1);
$y=$_POST['y'];
$m=$_POST['m'];
$d=$_POST['d'];
$dob=$y."-".$m."-".$d;
$ch=$_POST['ch'];
//$hobbies=implode(",",$ch);
$imgpath=$_FILES['file']['name'];
$un=$_POST['un'];
$_SESSION['ld']=$_POST['un'];
if($_POST['reg'])
{
	if($_POST['un']=="" || $_POST['pwd']=="")
	{
	$err="fill your user name first";
	}
	else
	{
	$r=mysql_query("SELECT * FROM userinfo where email='{$_POST['un']}'");

	$t=mysql_num_rows($r);
		if($t==1)
		{
		$err="email aleready exists choose another";
		}
		else
		{
		mysql_query("INSERT INTO userinfo values('','{$_POST['un']}','{$_POST['pwd']}','{$_POST['mob']}','{$_POST['eid']}','{$_POST['gen']}','$dob',
		'{$imgpath}')");
		mkdir("userImages/$un");
		move_uploaded_file($_FILES["file"]["tmp_name"], "userImages/$un/" . $_FILES["file"]["name"]);
		$_SESSION['sname']=$_POST['un'];
		header('index.php?chk=5');
		echo '<script>alert("Registration successfull")</script>';
														echo "<script>window.open('login.php','_self')</script>";
		}
	}
}

?>
<html>
<head>
    <title>E-mail System</title>
</head>
<link rel="stylesheet" type="text/css" href="css/style1.css">

		<script type="text/javascript" src="js/validation.js"></script>
    <link rel="shortcut icon" href="logo.jpg">

<body>

<div id="header">
<h1>E-mail System</h1>
</div>
    <div id="BCA">
            <fieldset>
                <legend>Sign up </legend>
              
			<form method="post" enctype="multipart/form-data">
<table width="438" border="5" align="center">
  <font color="#FF0000"><?php echo $err; ?></font>
    <div class="row">
				<div class="col">Enter your name</div>
				
				<div class="col2"><input type="text"  name="eid"id="un"  onBlur="chkBlnk('un','error')" placeholder="enter your name"  required/></div>
				<div class="col3" id="error5"></div>
			</div>
 <div class="row">
				<div class="col">Enter your email</div>
				
				<div class="col2"><input type="email"onBlur="chkEid()"  onKeyPress="return chkNum(event,'error')"id="eid" name="un"   placeholder="abc@gmail.com"  required/></div>
				<div class="col3" id="error"></div>
			</div>
 <div class="row">
				<div class="col">Enter your Password</div>
				
				<div class="col2"><input type="password" onBlur="chkPass()" name="pwd" id="pwd" placeholder="Your password"  rquired/></div>
				<div class="col3" id="error2"></div>
			</div>
			<div class="row">
				<div class="col">Enter your Conf Pass</div>
				
				<div class="col2"><input type="password" onBlur="chkCpass()" name="cpwd" id="cpwd" placeholder="Your confirm password"  rquired/></div>
				<div class="col3" id="error3"></div>
			</div>
  <div class="row">
				<div class="col">Enter your Mobile</div>
				
				<div class="col2"><input type="number" pattern="[0-9]*" name="mob" id="pwd" placeholder="Your mobile"  rquired/></div>
				<div class="col3"></div>
			</div>

  <div class="row">
    <div class="col">Select Your Gender </div>
    <div class="col2">
		Male<input type="radio" name="gen" value="m"/>
		Female<input type="radio" name="gen" value="f"/>
	</div>
  </div>
  
  <div class="row">
    <div class="col">Select Your DOB </div>
   <div class="col2" style="width:60%;">
		<select name="y">
			<option value="">Year</option>
			<?php
			for($i=1900;$i<=2013;$i++)
			{
			echo "<option value='$i'>$i</option>";
			}
			?>
		</select>
		<select name="m">
			<option value="">Month</option>
			<?php
			for($i=1;$i<=12;$i++)
			{
			echo "<option value='$i'>$i</option>";
			}
			?>
		</select>
		<select name="d">
			<option value="">Date</option>
			<?php
			for($i=1;$i<=31;$i++)
			{
			echo "<option value='$i'>$i</option>";
			}
			?>
		</select>
	<div>
	</div>

  <div class="row">
    <div class="col">Upload Your Pics</div>
    
	<input type="file" name="file"/>

	</div>

 
	<input type="submit" name="reg" value="Register"/>
	<input type="reset"  value="Reset"/>
	
</table>
</form>
    </div>
	<div id="footer"></div>
	
</body>
</html>

