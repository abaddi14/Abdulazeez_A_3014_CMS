<?php include("admin/scripts/connect.php")
if(!isset($_POST['search'])) {
  header("Location.index.php");
}
$search_sql="SELECT * FROM tbl_products WHERE products_name LIKE '%".$_POST['search']."%' OR products_description LIKE '%".$_POST['search']."%'";
$search_query=mysql_query($search_sql);
if(mysql_num_rows($search_query)!=0){
$search_rs=mysql_fetch_assoc($search_query);
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
    <p>search results </p>
<?php if(mysql_num_row($search_query)!=0){
  do {?>
    <img src="images/<?php echo $row['products_img'];?>"alt="<?php echo $row['products_name'];?>">
    	 <h2><?php echo $row['products_name'];?></h2>
    	 <p><?php echo $row['products_price'];?></p>
    	 <a href="details.php?id=<?php echo $row['products_id'];?>">Read More</a>
<?php  }while ($search_rs=mysql_fetch_assoc($search_query));
}esle {
  echo "no results found";
}


?>
<?php endwhile;?>
<?php include('templates/footer.html');?>
</body>
</html>
