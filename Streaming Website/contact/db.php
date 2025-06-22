<?php
    
    $name = "localhost";
    $username = "root";
    $password = "";

    $db_name = "website";

    $conn = mysqli_connect($name, $username, $password, $db_name);

    if (!$conn) {
        echo "Connection failed!";
        exit();

    }

?>