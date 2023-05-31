<?php

include_once('functions-page.php');


// Reading information from the database

if (isset($_POST['add_to_cart'])) {
    $id = $_POST['id'];
    
    // this is the query to insert into database
    $query ="SELECT `id` FROM `products` WHERE `id` = '$id';";
    
    // runs query to database
    $result = mysqli_query($conn, $query);

    // checks number of rows returned if not "0" makes email = $value 
    $row = mysqli_num_rows($result);
	if ($row == 0) {
		echo ("Product $id is not found");
	} else {
        while ($row = mysqli_fetch_assoc($result)) {
            $value = $row["id"];
        }  
        
        $name = return_info($conn, 'products', 'name', 'id', $id);
        $id = return_info($conn, 'products', 'id', 'id', $id);
        $price = return_info($conn, 'products', 'price', 'id', $id);
        $description = return_info($conn, 'products', 'description', 'id', $id);
        $status = return_info($conn, 'products', 'status', 'id', $id);

        $_SESSION["p$id"] = "yes";
        $session = ''.$_SESSION["p$id"];
        echo "Product Added To Cart!";
        /*
        echo ("ID of product is Id: $id <br>Name: $name <br>Price: $price <br>Description: $description <br>Session: $session");
        echo("<br>");
        echo("<br>");
        echo("Product ID's selected or in cart");
        echo("<br>");*/
        
        include("calc.php");
        //include("calculate-total.php");

        redirect_back();

    }
}


if (isset($_POST['checkout'])) {
    foreach ($_SESSION as $key=>$val)
    echo $key." ".$val."<br/>";
}

if (isset($_POST['remove_from_cart'])) {
    $id = $_POST['id'];
    unset($_SESSION["p$id"]);

    /*include("calculate-total.php");*/
    redirect_back();
    
}
