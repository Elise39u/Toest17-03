<?php 
require_once 'inc/db.php';
require_once 'inc/schoenen.php';
?>

<!DOCTYPE html>
<html>
<head>
	<title> Create </title>
</head>
<body>
<ul>
	<li><a href="index.php">Go back</a></li>
</ul>
<form action="create.php" method="post">
	sort: <br>
	<input type="text" name="sort"> <br>
	feetsize:<br>
	<input type="text" name="feetsize"><br>
	quantity:<br>
	<input type="number" name="quantity"><br>
	<input type="submit" value="submit" name="submit">
</form>
</body>
</html>