<?php
require 'database.php';
$postdata = file_get_contents('php://input');
if(isset($postdata) && !empty($postdata))
{
$request = json_decode($postdata,true);
if (trim($request['TENSP']) == '' ) {
return http_response_code(400);
}
$MASP = mysqli_real_escape_string($db, (int)$request['MASP']);

$TENSP = mysqli_real_escape_string($db, trim($request['TENSP']));
$GIABAN = mysqli_real_escape_string($db, (int)$request['GIABAN']);
$SOTRANG = mysqli_real_escape_string($db,(int)$request['SOTRANG']);
$NGONNGU = mysqli_real_escape_string($db, trim($request['NGONNGU']));
$KICHTHUOC = mysqli_real_escape_string($db, trim($request['KICHTHUOC']));
$TRONGLUONG = mysqli_real_escape_string($db, trim($request['TRONGLUONG']));
$MOTA = mysqli_real_escape_string($db, trim($request['MOTA']));
$ANHBIA = mysqli_real_escape_string($db, trim($request['ANHBIA']));
$NGAYCAPNHAT = mysqli_real_escape_string($db, trim($request['NGAYCAPNHAT']));
$SOLUONGTON = mysqli_real_escape_string($db, (int)$request['SOLUONGTON']);
$MAL = mysqli_real_escape_string($db, (int)$request['MAL']);
$MANXB = mysqli_real_escape_string($db, (int)$request['MANXB']);
$sql = "UPDATE SANPHAM SET TENSP='$TENSP', GIABAN=$GIABAN,SOTRANG=$SOTRANG,NGONNGU='$NGONNGU',KICHTHUOC='$KICHTHUOC',TRONGLUONG='$TRONGLUONG',MOTA='$MOTA',
ANHBIA='$ANHBIA',NGAYCAPNHAT='$NGAYCAPNHAT',SOLUONGTON=$SOLUONGTON,MAL=$MAL,MANXB=$MANXB WHERE  MASP = $MASP";
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

