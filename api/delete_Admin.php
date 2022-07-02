<?php
require 'database.php';
$MAAD = ($_GET['MAAD'] !== null && (int)$_GET['MAAD'] > 0)? mysqli_real_escape_string($db,
(int)$_GET['MAAD']) : false;
if(!$MAAD) {
return http_response_code(400);
}
$sql = "DELETE FROM ADMIN WHERE MAAD =$MAAD";
if($db->query($sql)) {
http_response_code(204);
}
else
{
return http_response_code(422);
}
?>