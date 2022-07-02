<?php
include 'database.php';
$postdata = file_get_contents("php://input");
if(isset($postdata) && !empty($postdata))
{
$request = json_decode($postdata,true);
// Validate.
if(trim($request['TENXB']) === '' )
{
return http_response_code(400);
}
$TENXB = mysqli_real_escape_string($db, trim($request['TENXB']));

$DIENTHOAI = mysqli_real_escape_string($db, (int)$request['DIENTHOAI']);
$DIACHI = mysqli_real_escape_string($db, trim($request['DIACHI']));


$sql = "INSERT INTO NHAXUATBAN (MANXB,TENXB,DIACHI,DIENTHOAI) VALUES (null,'$TENXB','$DIACHI',$DIENTHOAI)";
if($db->query($sql))
{
http_response_code(201);
$NHAXUATBAN = [
'MANXB' => mysqli_insert_id($db),
'TENXB'=>$TENXB,
'DIACHI' => $DIACHI,
'DIENTHOAI' => $DIENTHOAI,

];
echo json_encode($NHAXUATBAN);
}
else
{
http_response_code(422);
}
}
?>