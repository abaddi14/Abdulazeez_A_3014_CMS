<?php
function addProduct($img, $name, $logobrand, $colour, $price, $categories)
{
    try {
        // connection
        include 'connect.php';
        // validate
        $file_type= pathinfo($img['name'], PATHINFO_EXTENSION);
        $accepted_types = array('gif', 'jpg', 'jpe', 'jpeg', 'png');
        if (!in_array($file_type, $accepted_types)) {
            throw new Exception('Wrong type file!');
        }
        $target_path = '../images/' . $img['name'];
        if (!move_uploaded_file($img['tmp_name'], $target_path)) {
            throw new Exception('Failed to move file!');
        }
        $th_copy = '../images/TH_' . $img['name'];
        if (!copy($target_path, $th_copy)) {
            throw new Exception('Failed to move copy file!');
        }
        $insert_products_query = 'INSERT INTO tbl_products(products_img, products_name, products_brand,';
        $insert_products_query .= ' products_colour, products_price)';
        $insert_products_query .= ' VALUES(:products_img, :products_name, :products_logoBrand,';
        $insert_product_query .= ' :products_colour, :producst_price)';
        $insert_products  = $pdo->prepare($insert_products_query);
        $insert_result = $insert_product->execute(
            array(
                ':products_img'     => $img['name'],
                ':products_name'    => $name,
                ':products_logoBrand'   => $logoBrand['name'],
                ':products_colour'   => $color,
                ':products_price'   => $price
            )
        );
        if (!$insert_result) {
            throw new Exception('Failed to add new product!');
        }
        $last_id = $pdo->lastInsertId();
        $insert_categories_query = 'INSERT INTO tbl_products_categories(products_id, categories_id) VALUES(:products_id, :categories_id)';
        $insert_categories       = $pdo->prepare($insert_categories_query);
        $insert_categories->execute(
            array(
                ':products_id' => $last_id,
                ':categories_id'  => $categories,
            )
        );
        if (!$insert_category->rowCount()) {
            throw new Exception('Failed to add category!');
        }
        // redirect
        redirect_to('index.php');
    } catch (Exception $e) {
        $error = $e->getMessage();
        return $error;
    }
}
