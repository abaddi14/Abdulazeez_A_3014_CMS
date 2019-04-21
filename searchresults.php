<?php

function login($username, $password, $ip){
	require_once('connect.php');
	//Check if username exists

	$search_query="SELECT * FROM tbl_products WHERE products_name LIKE '%".$_POST['search']."%' OR products_description LIKE '%".$_POST['search']."%'";
	$search_query .= ' WHERE products_name = :productResult';

	$result_set = $pdo->prepare($check_products_query);
	$result_set->execute(
		array(
			':productResult'=>$productResult
		)
	);


	if($result_set->fetchColumn()>0){
		//TODO:Fill the following lines with the proper SQL query
		// so that it can get all rows where user_name = $username
		// and user_pass = $password
		$get_search_query = "SELECT * FROM tbl_products WHERE products_name LIKE :productResult";
		$get_search_query .= ' OR products_description LIKE :descResult';


		$get_result_set = $pdo->prepare($get_search_query);

		//TODO: don't forget to bind the placeholders in here!
		$get_result_set->execute(
			array(
				':productResult'=>$productResult,
				':descResult'=>$descResult
			)
		);

		while($found_result = $get_result_set->fetch(PDO::FETCH_ASSOC)){
			$id = $found_result['products_id'];
			$_SESSION['products_id'] = $id;
			$_SESSION['products_name'] = $found_result['products_name'];

			$resultName = $_POST['products_name'];
		$resultDesc = $_POST['products_desc'];
		$ip = $_SERVER['REMOTE_ADDR'];

		$searchResults = login($resultName,$resultDesc,$ip);



		}


		if(empty($id)){
			$message = 'No results found';
			return $message;
		}

		redirect_to('index.php');
	}else{
		$message = 'Login Failed!';
		return $message;
	}
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
	<h1>Sportchek</h1>
	<div>
<?php while($row = $searchResults->fetch(PDO::FETCH_ASSOC)):?>
<img src="images/<?php echo $row['products_img'];?>"alt="<?php echo $row['products_name'];?>">
	 <h2><?php echo $row['products_name'];?></h2>
	 <p><?php echo $row['products_price'];?></p>
	 <a href="details.php?id=<?php echo $row['products_id'];?>">Read More</a>
<?php endwhile;?>
	</div>

<?php include('templates/footer.html');?>
</body>
</html>
