<?php
require 'database.php';
$postdata = file_get_contents('php://input');
if(isset($postdata) && !empty($postdata))
{
$request = json_decode($postdata,true);
if (trim($request['TENLOAI']) == '' ) {
return http_response_code(400);
}
$MAL = mysqli_real_escape_string($db, (int)($request['MAL']));
$TENLOAI = mysqli_real_escape_string($db, trim($request['TENLOAI']));

$sql = "UPDATE LOAI SET TENLOAI='$TENLOAI' WHERE  MAL = $MAL";
if($db->query($sql))
{
http_response_code(204);
}
else
{
return http_response_code(422);
}
}
?>

