<?php
require 'database.php';
$MANXB = ($_GET['MANXB'] !== null && (int)$_GET['MANXB'] > 0)? mysqli_real_escape_string($db,
(int)$_GET['MANXB']) : false;
if(!$MANXB) {
return http_response_code(400);
}
$sql = "DELETE FROM NHAXUATBAN WHERE MANXB =$MANXB";
if($db->query($sql)) {
http_response_code(204);
}
else
{
return http_response_code(422);
}
?>