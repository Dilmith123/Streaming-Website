<?php
    session_start();

    include("db.php");

    if($_SERVER['REQUEST_METHOD'] == "POST")
    {
        $name = $_POST['name'];
        $email = $_POST['email'];
        $msg = $_POST['msg'];

        if(isset($_POST['name']) && isset($_POST['email']) && isset($_POST['msg']))
        {

            $query = ("INSERT INTO `data`(name, email, msg) values('$name', '$email', '$msg')");

            mysqli_query($conn, $query);

            echo "<script type='text/javascript'> alert('Request Successfully Submitted')</script>";
        }
        else
        {
            echo "<script type='text/javascript'> alert('Please Enter Your Request')</script>";  
        }

    }

?>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Contact</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
    <div class="contact">
        <h1>Contact Us</h1>
        <form method="POST">
        <label>Name</label>
        <input type="text" name="name" required><br>
        <label>Email</label>
        <input type="email" name="email" required><br>
        <label>Enter Your Request</label>
        <textarea name="msg" rows="10" cols="30"></textarea><br>
        <input type="submit" name="" value="Submit">
        </form>
    </div>
    </body> 
</html>       