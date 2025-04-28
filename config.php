<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "amdb";
/*
 $servername = "localhost";
 $username = "veloxnc1_veloxndbun";
 $password = "india@vbd121";
 $dbname = "veloxnc1_veloxndb";
*/
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

?>

