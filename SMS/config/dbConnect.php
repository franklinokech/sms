<?php
//error_reporting(0);
$servername = $_SERVER['HTTP_HOST'];
$username = "root";
//$username="";
$password = "";
//$password="";
$database="sms";

// Create connection
$conn = mysqli_connect($servername, $username, $password,$database);
$dB_select=  mysqli_select_db($conn,$database);

// Check connection
if (!($conn) OR !($dB_select)) {
    die("Connection failed: " . mysqli_connect_error());
}
//echo "Connected successfully";


?>

