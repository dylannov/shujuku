<?php
session_start();
$con = mysqli_connect("localhost","root","","school");

if (mysqli_connect_errno())
{
	echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
$user = $_POST['yonghu'];
$pass = $_POST['mima'];
$sql="select yhm,role from role,users where users.role_id=role.id and yhm='".$user."' and mm='".md5($pass)."' ";
//echo $sql;

$rs= mysqli_query($con,$sql);

$row=mysqli_fetch_array($rs,MYSQLI_ASSOC);
//echo $row['role'];

if($row['role'] !=""){
	$_SESSION['username']=$row['yhm'];
	if($row['role']== 'admin')
		header("location:admin.php");
	if($row['role']== 'teacher')
		header("location:teacher.php");
	if($row['role']== 'student')
		header("location:student.php");
}
else{
	$_SESSION['pesan']="unknown username/password";
	header("location:index.php");
}
?>