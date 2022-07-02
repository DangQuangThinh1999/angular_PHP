<?php
require 'database.php';
$postdata = file_get_contents('php://input');
if(isset($postdata) && !empty($postdata))
{
$request = json_decode($postdata,true);
if (trim($request['HOTEN']) == '' ) {
return http_response_code(400);
}
$MAKH = mysqli_real_escape_string($db, (int)$request['MAKH']);
$HOTEN = mysqli_real_escape_string($db, trim($request['HOTEN']));
$TAIKHOAN = mysqli_real_escape_string($db, trim($request['TAIKHOAN']));
$MATKHAU = mysqli_real_escape_string($db, trim($request['MATKHAU']));
$EMAIL = mysqli_real_escape_string($db, trim($request['EMAIL']));
$GIOITINH = mysqli_real_escape_string($db, trim($request['GIOITINH']));
$DIACHIKH = mysqli_real_escape_string($db, trim($request['DIACHIKH']));
$DIENTHOAI = mysqli_real_escape_string($db, (int)$request['DIENTHOAI']);
$NGAYSINH = mysqli_real_escape_string($db, trim($request['NGAYSINH']));
$sql = "UPDATE KHACHHANG SET HOTEN='$HOTEN',TAIKHOAN='$TAIKHOAN',MATKHAU='$MATKHAU',EMAIL='$EMAIL',GIOITINH='$GIOITINH',DIACHIKH='$DIACHIKH'
,DIENTHOAI=$DIENTHOAI,NGAYSINH='$NGAYSINH' WHERE  MAKH = $MAKH";
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
