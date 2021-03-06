<?php
	require_once('scripts/config.php');
	confirm_logged_in();
?>
<!doctype html>
<html>
<head>
	<meta charset="UTF-8">
	 <link rel="stylesheet" type="text/css" href="../css/main.css">
	<title>Welcome to your admin panel</title>
</head>
<body>
	<?php include('templates/header.html'); ?>
	<h1>Admin Dashboard</h1>
	<h3>Welcome <?php echo $_SESSION['user_name'];?></h3>
	<p>This is the admin dashboard page</p>
	<nav>
		<ul>
			<li><a href="admin_addproduct.php">Add Product</a></li>
			<li><a href="admin_editproduct.php">Edit Product</a></li>
			<li><a href="admin_deleteproduct.php">Delete Product</a></li>
			<li><a href="scripts/caller.php?caller_id=logout">Sign Out</a></li>
		</ul>
	</nav>
</body>
<?php include('templates/footer.html');?>
</html>
