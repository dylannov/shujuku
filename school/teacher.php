<?php
session_start();
$con = mysqli_connect("localhost","root","","school");
?>

<html>
<head>
</head>

<body>
    <h1>TEACHER</h1>
    <?php 
    $username = $_SESSION['username'];
    $sql = "select xm from t where yhm='".$username."'";
    $rs= mysqli_query($con,$sql);
    $row=mysqli_fetch_array($rs,MYSQLI_ASSOC);

		if( isset($_SESSION['username'])==true)
			echo "<h2>Hello </h2>"."<h2>".$row['xm']."</h2>";
	?>
</body>
</html>