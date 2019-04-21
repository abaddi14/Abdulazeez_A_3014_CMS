<?php require_once('admin/scripts/config.php');
if(isset($_GET['id'])){
	$tbl = 'tbl_products';
	$col = 'products_id';
	$value = $_GET['id'];
	$results = getSingle($tbl, $col, $value);
}else{

}
?>

<!doctype html>
<html>
<head>
	<meta charset='utf-8'>
	<title>Product Details</title>
	<link rel="stylesheet" href="css/main.css">
</head>
<body>
	<?php include('templates/header.html'); ?>
	<h1></h1>
	<div>
	<?php while($row = $results->fetch(PDO::FETCH_ASSOC)):?>
		<div class="detailsInfo">
		<img src="images/<?php echo $row['products_img'];?>"id="detailsProductImage">
		<div id="rightSide">
			<img src="images/<?php echo $row['products_logoBrand'];?>"id="detailsLogo">
			<h2 id="detailsTitle"><?php echo $row['products_name'];?></h2>
		<p id="size"><span id="detailsSpan">Size:</span><?php echo $row['products_size'];?></p>
		<p id="color"><span id="detailsSpan">Color:</span><?php echo $row['products_colour'];?></p>
		<p id="discount"><span id="detailsSpan">Discounts:</span><?php echo $row['products_discount'];?></p>
		<p id="price"><?php echo $row['products_price'];?></p>
	</div>

		<p id="productDesc"><?php echo $row['products_description'];?></p>
	</div>
	<?php endwhile;?>
	</div>

	<?php include('templates/footer.html');?>
</body>
</html>
