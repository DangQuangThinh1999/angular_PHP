<?php
require 'database.php';
$postdata = file_get_contents('php://input');
if(isset($postdata) && !empty($postdata))
{
$request = json_decode($postdata,true);
if (trim($request['HOTEN']) == '' ) {
return http_response_code(400);
}
$MAAD = mysqli_real_escape_string($db, (int)$request['MAAD']);
$USER = mysqli_real_escape_string($db, trim($request['USER']));
$PASSWORD = mysqli_real_escape_string($db, trim($request['PASSWORD']));
$HOTEN = mysqli_real_escape_string($db, trim($request['HOTEN']));


$sql = "UPDATE ADMIN SET HOTEN='$HOTEN',USER='$USER',PASSWORD='$PASSWORD' WHERE  MAAD = $MAAD";
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
