<?php
session_start();
require('db.php');
require('auth.php');

if (isset($_SESSION["login"])) {
    header("location: ../index.php");
    exit();
}

if ($connection->connect_error) {
    die("Connection Failed: " . $connection->connect_error);
}

if (isset($_POST["login"])) {
    $username = $_POST["username"];
    $password = $_POST["password"];

    $query = "SELECT * FROM account where username = '$username'";
    $result = $connection->query($query);

    if (mysqli_num_rows($result) === 1) {
        $user_data = mysqli_fetch_assoc($result);

        if (password_verify($password, $user_data["password"])) {
            $_SESSION['login'] = true;
            header("location: ../index.php");
            exit;
        }
    }
    $error = true;
}

$connection->close();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>

    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/4.5.2-bootstrap.min.css">

    <style>
        /* Custom CSS to center the form */
        .centered-form {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .margin-top {
            margin-top: 180px;
        }

        /* Custom CSS for the side image */
        .side-image {
            /* background-image: url('../images/login.png'); */
            /* Replace 'your-image-url.jpg' with the actual image URL */
            background-size: cover;
            background-position: center;
            height: 100vh;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="row margin-top">

            <div class="col-md-6 side-image">
                <img src="../images/login.png" class="img-fluid" alt="login-image">
            </div>

            <div class="col-md-6">
                <div class="card custom-card">
                    <div class="card-header">
                        Login
                    </div>
                    <div class="card-body">
                        <?php if (isset($error)): ?>
                            <div class="alert alert-danger" role="alert">
                                Username atau Password Salah!
                            </div>
                        <?php endif; ?>
                        <form action="" method="post">
                            <div class="form-group">
                                <label for="username">Username</label>
                                <input type="text" class="form-control" name="username" oninput="filterInput(this)"
                                    placeholder="Enter your username">
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" class="form-control" name="password" placeholder="Enter your password">
                            </div>
                            <div class="form-group">
                                <div class="text-center">
                                    <a href="#">Forgot Password?</a>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary btn-block" name="login">Login</button>
                            <div class="form-group mt-4">
                                <div class="text-center">
                                    <span>Don't have an account?</span>
                                    <a href="../auth/register.php">Register Here</a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <script src="../js/jquery-3.5.1.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.bundle.min.js"></script>

</body>

</html>