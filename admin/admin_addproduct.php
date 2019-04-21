<?php
	require_once('scripts/config.php');
	confirm_logged_in();
	$categories_tbl = 'tbl_categories';
	$categories = getAll($categories_tbl);
if(isset($_POST['submit'])){
	$img = $_FILES['img'];
	$name = $_POST['name'];
	$logoBrand = $_POST['Brand'];
	$colour = $_POST['colour'];
	$price = $_POST['price'];
    $categories = $_POST['categoriesList'];
    $result = addProduct($img, $name, $logoBrand, $colour, $price, $categories);
	$message = $result;
}
?>

<!doctype html>
<html>
<head>
	<meta charset="utf-8">
		 <link rel="stylesheet" type="text/css" href="../css/main.css">
	<title>Add Product</title>
</head>
<body>
		<?php include('templates/header.html'); ?>
	<?php if(!empty($message)):?>
		<p><?php echo $message;?></p>
	<?php endif;?>
	<h2>Add Product</h2>
	<form action="admin_addproduct.php" method="post" enctype="multipart/form-data">

		<label for="img">Product Image:</label>
        <input type="file" name="img" id="img" value=""><br><br>

        <label for="title">Product Name:</label>
        <input type="text" name="title" id="title" value=""><br><br>

        <label for="logoBrand">Product Logo Brand:</label>
        <input type="img" name="logoBrand" id="logoBrand" value=""><br><br>

        <label for="colour">Product Colour:</label>
        <input type="text" name="colour" id="colour" value=""><br><br>

        <label for="price">Product Price:</label>
        <input type="text" name="price" id="price" value=""><br><br>

        <label for="categorieslist">Product Category:</label>
        <select name="categoriesList" id="categorieslist">
            <option>Please select a category</option>
            <?php while ($category = $categories->fetch(PDO::FETCH_ASSOC)): ?>
            <option value="<?php echo $category['categories_id']; ?>">
                <?php echo $category['categories_name']; ?>
            </option>
            <?php endwhile; ?>
        </select><br><br>


        <button type="submit" name="submit">Add Product</button>
	</form>

</body>

</html>
