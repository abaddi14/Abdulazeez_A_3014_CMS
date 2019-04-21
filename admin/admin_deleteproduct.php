<?php
	require_once('scripts/config.php');
    confirm_logged_in();
    //ToDo: Pull all product from tbl_products
    //save the result to be an array $product
    $tbl = 'tbl_products';
    $products = getAll($tbl);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
			 <link rel="stylesheet" type="text/css" href="../css/main.css">
    <title>Delete Products</title>
</head>
<body>
		<?php include('templates/header.html'); ?>
<h2>Delete Products</h2>
    <table>
    <thead>
        <tr>
                <th>Product Name</th>
                <th>Price</th>
                <th>Size</th>
                <th>Colour</th>
                <th>Delete</th>
        </tr>
        </thead>
        <tbody>
        <?php while($product = $products->fetch(PDO::FETCH_ASSOC)):?>
            <tr>
                <td><?php echo $product['products_name'];?></td>
                <td><?php echo $product['products_price'];?></td>
							  <td><?php echo $product['products_size'];?></td>
                <td><?php echo $product['products_colour'];?></td>
                <td><a href="./scripts/caller.php?caller_id=delete&id=<?php echo $product['products_id'];?>">Delete</a></td>
            </tr>
            <?php endwhile; ?>
    </tbody>
    </table>
</body>
<?php include('templates/footer.html');?>
</html>
