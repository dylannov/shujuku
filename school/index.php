<?php
session_start();
?>

<html>
<head>
</head>

<body>
<div id="container">
	<div id="header">
		<h1>
            教学事务管理系统
		</h1>
	</div>
	<div id="content-container">
		<div id="aside">
			<form action="login.php" method="post">
				用户名 <input type="text" name="yonghu"> <br/>
				密码 <input type="password" name="mima"> <br/>
				<input type="submit" value="登录">
			</form>		

		</div>
	</div>
</div>
</body>
</html>