<?php
function deleteProduct($id){
		include('connect.php');
		$delete_product_query = 'DELETE FROM tbl_products WHERE products_id = :id';
		$delete_product = $pdo->prepare($delete_product_query);
		$delete_product->execute(
			array(
				':id'=>$id
			)
		);
		if($delete_product){
			redirect_to('../index.php');
		}else{
			$message = 'Not delete yet!';
			return $message;
		}
	}
  ?>
