<?php
$con=mysqli_connect('db', 'user', 'test', "myDb");
if (!$con) {
    die('Could not connect: ' . mysqli_error());
}
?>