<?php
	require_once 'inc/db.php';
	require_once 'inc/schoenen.php';
?>

<!DOCTYPE html>
<html>
<head>
	<title> Schoenen </title>
</head>
<body>
 <ul>
 	<li><a href="create.php"> Create a Sort </a></li>
 </ul>
<table>
	<thead>
	<tr>
		<td>Name</td>
		<td>Feetsize</td>
		<td>Quantity</td>
		<td>Action</td>
		<td>Action</td>
	</tr>
	</thead>
<?php if (isset($_GET['size'])): { ?>
<?php
	$size = $_GET['size'];
 	$newinfo = SelectDataSchoenenSelected($link, $size);
 	foreach ($newinfo as $info) { 
 		$id = $info['id'];?> 
 		<tbody>
	<tr>
		<td><?php echo $info['name'];?></td>
		<td><?php echo $info['feetsize']; ?></td>
		<td><?php echo $info['quantity']; ?></td>
		<td><a href="edit.php?id=<?php echo $id ?>"> Edit </a></td>
		<td><a href="delete.php?id=<?php echo $id ?>"> Delete </a></td>
	</tr>
	</tbody>
 	<?php } 
}?><?php else: { ?> <?php 
$resultaat = SelectDataSchoenen($link);
foreach ($resultaat as $schoen) {
	$id = $schoen['id'];
	?>
	<tbody>
	<tr>
		<td><?php echo $schoen['name'];?></td>
		<td><?php echo $schoen['feetsize']; ?></td>
		<td><?php echo $schoen['quantity']; ?></td>
		<td><a href="edit.php?id=<?php echo $id ?>"> Edit </a></td>
		<td><a href="delete.php?id=<?php echo $id ?>"> Delete </a></td>
	</tr>
	</tbody>
<?php } } ?> <?php endif; ?>
<form method="post">
<select name="ShoeSelectd" onchange="location = this.value;">
	<?php $sizes = SelectDataSize($link);
	foreach ($sizes as $size):
		$info = $size['size']
		?>
		<option value="index.php?size=<?php echo $info ?>"><?php echo $info;?></option>
	<?php endforeach; ?>
</select>
</form>
</table>

</body>
</html>