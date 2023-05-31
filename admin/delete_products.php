<?php
    include '../functions-page.php';

    if(isset($_GET["id"]) && !empty(trim($_GET["id"]))){
        // Get URL parameter
        $id =  trim($_GET["id"]);

        $delete_product = "DELETE FROM `products` WHERE id = '$id'";
        $result = mysqli_query($conn, $delete_product);
        if ($result)
        {
            echo "<center><h1 style='color:#1b82d6'>Product ID $id has been successfully deleted!</h1></center>";
                
            header("refresh:2;add_products.php");
        }
        else{
            echo "<center><h1 style='color:#e74c3c'>Product ID $id doesn't exist!</h1></center>";
                
            header("refresh:5;add_products.php");
        }
    }
?>