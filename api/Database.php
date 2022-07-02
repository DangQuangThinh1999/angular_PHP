<?php
header("Access-Control-Allow-Origin: *");
header('Access-Control-Allow-Credentials: true');
header("Access-Control-Allow-Methods: PUT, GET, POST, DELETE,PATCH");
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
header("Content-Type: application/json; charset=UTF-8");
define('HOST', 'localhost');
define('USER', 'root');
define('PASS', '');
define('NAME', 'db_book');
$db = new mysqli(HOST ,USER ,PASS ,NAME);
if ($db->connect_errno) {
die("Database connection error:" . $db->connect_errno);
}
?>
