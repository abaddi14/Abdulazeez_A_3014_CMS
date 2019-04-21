<?php
require_once('scripts/config.php');
confirm_logged_in();
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
    <title>Edit Products</title>
</head>
<body>
  	<?php include('templates/header.html'); ?>
    <?php if(!empty($message)):?>
		<p><?php echo $message;?></p>
	<?php endif;?>

    <h2>Edit Products</h2>

    <table>
    <thead>
    <tr>
                <th>Product Name</th>
								<th>Price</th>
								<th>Size</th>
                <th>Colour</th>
                <th>Edit</th>
    </tr>
    </thead>
    <section>
        <?php while($product = $products->fetch(PDO::FETCH_ASSOC)):?>
            <tr>
                <td><?php echo $product['products_name'];?></td>
								<td><?php echo $product['products_price'];?></td>
							  <td><?php echo $product['products_size'];?></td>
                <td><?php echo $product['products_colour'];?></td>
                <td><a href="admin_edit.php?id=<?php echo $product['products_id'];?>"><p>Edit</p></a></td>
            </tr>
      <?php endwhile; ?>
        </section>
</table>
</body>
<?php include('templates/footer.html');?>
</html>
