<?php
require 'database.php';
$id = ($_GET['MAKH'] !== null && (int)$_GET['MAKH'] > 0)? mysqli_real_escape_string($db,
(int)$_GET['MAKH']) : false;
if(!$MAKH) {
return http_response_code(400);
}
$sql = "DELETE FROM KHACHHANG WHERE MAKH =$MAKH";
if($db->query($sql)) {
http_response_code(204);
}
else
{
return http_response_code(422);
}
?>