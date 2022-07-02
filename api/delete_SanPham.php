<?php
require 'database.php';
$MASP = ($_GET['MASP'] !== null && (int)$_GET['MASP'] > 0)? mysqli_real_escape_string($db,
(int)$_GET['MASP']) : false;
if(!$MASP) {
return http_response_code(400);
}
$sql = "DELETE FROM SANPHAM WHERE MASP =$MASP";
if($db->query($sql)) {
http_response_code(204);
}
else
{
return http_response_code(422);
}
?>