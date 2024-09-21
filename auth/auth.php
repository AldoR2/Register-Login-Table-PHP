<?php
function register($data)
{
    global $connection;

    $name = $data["name"];
    $username = $data["username"];
    $password = $data["password"];
    $confirm_password = $data["confirm_password"];

    $result = mysqli_query($connection, "SELECT username from account WHERE username = '$username'");

    if (mysqli_fetch_assoc($result)) {
        echo "<script>
            alert('Username sudah terdaftar.')
        </script>";
        return false;
    } else if ($password != $confirm_password) {
        echo "<script>
            alert('Konfirmasi Password Tidak Sesuai.')
        </script>";
        return false;
    } else {
        $password = password_hash($password, PASSWORD_DEFAULT);

        $sql = "INSERT INTO account (name, username, password) VALUES (?, ?, ?)";
        $stmt = $connection->prepare($sql);
        $stmt->bind_param("sss", $name, $username, $password);
        $stmt->execute();

        return mysqli_affected_rows($connection);
    }
}