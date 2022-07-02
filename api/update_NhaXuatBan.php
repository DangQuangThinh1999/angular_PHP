<?php
require 'database.php';
$postdata = file_get_contents('php://input');
if(isset($postdata) && !empty($postdata))
{
$request = json_decode($postdata,true);
if (trim($request['TENXB']) == '' ) {
return http_response_code(400);
}
$MANXB = mysqli_real_escape_string($db, (int)$request['MANXB']);
$TENXB = mysqli_real_escape_string($db, trim($request['TENXB']));
$DIACHI = mysqli_real_escape_string($db, trim($request['DIACHI']));
$DIENTHOAI = mysqli_real_escape_string($db, (int)$request['DIENTHOAI']);


$sql = "UPDATE NHAXUATBAN SET TENXB='$TENXB',DIACHI='$DIACHI',DIENTHOAI=$DIENTHOAI WHERE  MANXB = $MANXB";
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

