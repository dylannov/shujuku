<?php
session_start();
$con = mysqli_connect("localhost","root","","school");
?>

<html>
<head>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>

<div id="container">
	<div id="header">
		<h1>
            教学事务管理系统
		</h1>
	</div>
	<div id="navigation">
		<ul>
			
		</ul>
	</div>
	
	<div id="content-container">
		<div id="content">
        <h1>STUDENT</h1>
    <?php 
    $username = $_SESSION['username'];
    $sql = "select xm from s where yhm='".$username."'";
    $rs= mysqli_query($con,$sql);
    $row=mysqli_fetch_array($rs,MYSQLI_ASSOC);

		if( isset($_SESSION['username'])==true)
			echo "<h2>Hello </h2>"."<h2>".$row['xm']."</h2>";
	?>
			
		</div>
		
		
		
		<div id="aside">

		</div>
		<div id="footer">
			©上海大学, 2023
		</div>
	</div>
</body>
</html>