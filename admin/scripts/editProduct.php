<?php
function editProduct($id, $img, $name, $logoBrand, $colour, $price){
		include('connect.php');
		$update_product_query = 'UPDATE tbl_products SET products_img=:img, products_name=:name,';
		$update_product_query .=' products_logoBrand=:logoBrand, products_colour=:colour, products_price=:price';
		$update_product_query .=' WHERE products_id = :id';
		$update_product_set = $pdo->prepare($update_product_query);
		$update_product_set->execute(
			array(
				':img'=>$img,
				':name'=>$name,
				':logoBrand'=>$logoBrand,
				':colour'=>$colour,
				':price'=>$price,
				':id'=>$id
		)
	);
	if($update_product_set->rowCount()){
		redirect_to('index.php');
	}else{
		$message = 'You got scammed!';
		return $message;
	}
	}
  ?>
