<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Movie</title>
        <style>
            body{
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
                min-height: 100vh;
            }
            input {
                font-size: 2rem;

                /*display: block;*/
                /*width: 100%;*/
                /*margin-top: 1rem;*/
                /*padding:1rem 3rem;*/
                cursor: pointer;
                /*font-size: 1.8rem;*/
                border-radius: .5rem;
                color:var(--white);
                text-align: center;
                text-transform: capitalize;
            }
            a{
                text-decoration: none;
                color: #006CFF;
                font-size: 1.5rem;
            }
            body{
                /*background-color: var(--light-bg);*/
                background-image: url('Blue-Cubes.gif');
                background-repeat: no-repeat;
                background-attachment: fixed; 
                background-size: 100% 100%;
            }
        </style>
    </head>
    <body>
        <a href="view.php">Videos</a>
        <?php if (isset($_GET['error'])){ ?>
            <p><?=$_GET['error']?></p>

        <?php } ?>
        <form action="upload.php" method="post" enctype="multipart/form-data">
            <input type="file" name="my_video">
            <input type="submit" name="submit" value="Upload"> 
        </form>
    </body>
</html>
