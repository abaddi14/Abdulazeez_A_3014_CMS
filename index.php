<?php require_once('admin/scripts/config.php');
if(isset($_GET['filter'])){
	$tbl = 'tbl_products';
	$tbl_2 = 'tbl_categories';
	$tbl_3 = 'tbl_products_categories';
	$col = 'products_id';
	$col_2 = 'categories_id';
	$col_3 = 'categories_name';
	$filter = $_GET['filter'];
	$results = filterResults($tbl,$tbl_2,$tbl_3,$col,$col_2,$col_3,$filter);
}else{
	$results = getAll('tbl_products');
}
?>

<!doctype html>
<html>
<head>
	<meta charset='utf-8'>
	<title>Sportchek</title>
	<link rel="stylesheet" href="css/main.css">
</head>
<body>
	<?php include('templates/header.html'); ?>

	<!--
	<form name="form" method="post" action="search.php">

		<input name="search" type="text" size="30" maxlength="50" id="searchbar"/>
		<input type="submit" name="Submit" value="Search" id="button"/>

	</form>
-->


	<div id="mainDiv">
<?php while($row = $results->fetch(PDO::FETCH_ASSOC)):?>
	<div id="productDiv">
<img src="images/<?php echo $row['products_img'];?>"alt="<?php echo $row['products_name'];?>">
	 <h2 id="productTitle"><a href="details.php?id=<?php echo $row['products_id'];?>"</a><?php echo $row['products_name'];?></h2>
	 <p><?php echo $row['products_price'];?></p>
	 </div>
	 
<?php endwhile;?>
</div>

</body>

</html>
