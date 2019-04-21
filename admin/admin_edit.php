<?php  require_once('scripts/config.php');
if(isset($_GET['id'])){
	$tbl = 'tbl_products';
	$col = 'products_id';
	$value = $_GET['id'];
	$results = getSingle($tbl, $col, $value);
}
if(is_string($results)){
    $message = 'Failed to get user information!';
}
if(isset($_POST['submit'])){
    $id = $_POST['id'];
    $img = $_POST['img'];
    $name= $_POST['name'];
    $logoBrand = $_POST['logoBrand'];
    $colour = $_POST['colour'];
    $price = $_POST['price'];
    $result = editProducts($id,$img,$name,$size,$logoBrand,$colour,$price);
    $message = 'Data is right!';
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
		 <link rel="stylesheet" type="text/css" href="../css/main.css">
    <title>Edit Products</title>
</head>
<body>
		<?php include('templates/header.html'); ?>
    <?php if(!empty($message)):?>
		<p><?php echo $message;?></p>
	<?php endif;?>
    <h2>Edit Products</h2>
    <?php if($found_products = $results->fetch(PDO::FETCH_ASSOC));?>
    <form method="POST" action="admin_edit.php">

        <label for="id">Product ID:</label>
        <input type="text" id="id" name="id" value="<?php echo $found_products['products_id'];?>"><br><br>

        <label for="img">Product Image:</label>
        <input type="file" name="img" id="img" value="<?php echo $found_products['products_img']; ?>"><br><br>

        <label for="title">Product Name:</label>
        <input type="text" name="title" id="title" value="<?php echo $found_products['products_name']; ?>"><br><br>

        <label for="logoBrand">Product Logo Brand:</label>
        <input type="text" name="logoBrand" id="logoBrand" value="<?php echo $found_products['products_logoBrand']; ?>"><br><br>

        <label for="colour">Product Colour:</label>
        <input type="text" name="colour" id="colour" value="<?php echo $found_products['products_colour']; ?>"><br><br>

        <label for="price">Product Price:</label>
        <input type="text" name="price" id="price" value="<?php echo $found_products['products_price']; ?>"><br><br>

		<button type="submit" name="submit">Edit Products</button>
    </form>
</body>
<?php include('templates/footer.html');?>
</html>
