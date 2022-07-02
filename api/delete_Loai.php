<?php
require 'database.php';
$MAL = ($_GET['MAL'] !== null && (int)$_GET['MAL'] > 0)? mysqli_real_escape_string($db,
(int)$_GET['MAL']) : false;
if(!$MAL) {
return http_response_code(400);
}
$sql = "DELETE FROM LOAI WHERE MAL =$MAL";
if($db->query($sql)) {
http_response_code(204);
}
else
{
return http_response_code(422);
}
?>