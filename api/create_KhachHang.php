<?php
include 'database.php';
$postdata = file_get_contents("php://input");
if(isset($postdata) && !empty($postdata))
{
$request = json_decode($postdata,true);
// Validate.
if(trim($request['HOTEN']) === '' )
{
return http_response_code(400);
}
$HOTEN = mysqli_real_escape_string($db, trim($request['HOTEN']));
$TAIKHOAN = mysqli_real_escape_string($db, trim($request['TAIKHOAN']));
$MATKHAU = mysqli_real_escape_string($db, trim($request['MATKHAU']));
$EMAIL = mysqli_real_escape_string($db, trim($request['EMAIL']));
$GIOITINH = mysqli_real_escape_string($db, trim($request['GIOITINH']));
$DIACHIKH = mysqli_real_escape_string($db, trim($request['DIACHIKH']));
$DIENTHOAI = mysqli_real_escape_string($db, (int)$request['DIENTHOAI']);
$NGAYSINH = mysqli_real_escape_string($db, trim($request['NGAYSINH']));

$sql = "INSERT INTO KHACHHANG (MAKH,HOTEN,TAIKHOAN,MATKHAU,EMAIL,GIOITINH,DIACHIKH,DIENTHOAI,NGAYSINH) 
VALUES (null,'$HOTEN','$TAIKHOAN','$MATKHAU','$EMAIL','$GIOITINH','$DIACHIKH',$DIENTHOAI,'$NGAYSINH')";
if($db->query($sql))
{
http_response_code(201);
$KHACHHANG = [
'MAKH' => mysqli_insert_id($db),'HOTEN' => $HOTEN,
'TAIKHOAN' => $TAIKHOAN,
'MATKHAU'=>$MATKHAU,
'EMAIL'=>$EMAIL,
'GIOITINH'=>$GIOITINH,
'DIACHIKH'=>$DIACHIKH,
'DIENTHOAI'=>$DIENTHOAI,
'NGAYSINH'=> $NGAYSINH
];
echo json_encode($KHACHHANG);
}
else
{
http_response_code(422);
}
}
?>