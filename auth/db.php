<?php 
$connection = mysqli_connect("localhost", "root", "", "auth");

if (mysqli_connect_errno()) {
    echo "Failed to connect MySQL: " . mysqli_connect_error();
}