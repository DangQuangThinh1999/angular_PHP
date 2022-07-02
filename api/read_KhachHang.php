<?php
include 'database.php';
$KHACHHANG = [];
$sql = "SELECT * FROM KHACHHANG";
if($result = $db->query($sql))
{
$i = 0;
while($row = $result->fetch_assoc())
{
$KHACHHANG[$i]['MAKH'] = $row['MAKH'];
$KHACHHANG[$i]['HOTEN'] = $row['HOTEN'];
$KHACHHANG[$i]['TAIKHOAN'] = $row['TAIKHOAN'];
$KHACHHANG[$i]['MATKHAU'] = $row['MATKHAU'];
$KHACHHANG[$i]['EMAIL'] = $row['EMAIL'];
$KHACHHANG[$i]['GIOITINH'] = $row['GIOITINH'];
$KHACHHANG[$i]['DIACHIKH'] = $row['DIACHIKH'];
$KHACHHANG[$i]['DIENTHOAI'] = $row['DIENTHOAI'];
$KHACHHANG[$i]['NGAYSINH'] = $row['NGAYSINH'];

$i++;
}
echo json_encode($KHACHHANG);
}
else
{
http_response_code(404);
}
?>

