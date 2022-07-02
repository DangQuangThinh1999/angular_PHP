<?php
include 'database.php';
$postdata = file_get_contents("php://input");
if(isset($postdata) && !empty($postdata))
{
$request = json_decode($postdata,true);
// Validate.
if(trim($request['TENSP']) === '' )
{
return http_response_code(400);
}
$TENSP = mysqli_real_escape_string($db, trim($request['TENSP']));
$GIABAN = mysqli_real_escape_string($db, (int)$request['GIABAN']);
$SOTRANG = mysqli_real_escape_string($db, (int)$request['SOTRANG']);
$NGONNGU = mysqli_real_escape_string($db, trim($request['NGONNGU']));
$KICHTHUOC = mysqli_real_escape_string($db, trim($request['KICHTHUOC']));
$TRONGLUONG = mysqli_real_escape_string($db, trim($request['TRONGLUONG']));
$MOTA = mysqli_real_escape_string($db, trim($request['MOTA']));
$ANHBIA = mysqli_real_escape_string($db, trim($request['ANHBIA']));
$NGAYCAPNHAT = mysqli_real_escape_string($db, trim($request['NGAYCAPNHAT']));
$SOLUONGTON = mysqli_real_escape_string($db, (int)$request['SOLUONGTON']);
$MAL = mysqli_real_escape_string($db, (int)$request['MAL']);
$MANXB = mysqli_real_escape_string($db, (int)$request['MANXB']);

$sql = "INSERT INTO SANPHAM (MASP,TENSP,GIABAN,SOTRANG,NGONNGU,KICHTHUOC,TRONGLUONG,MOTA,ANHBIA,NGAYCAPNHAT,SOLUONGTON,MAL,MANXB) 
VALUES (null,'$TENSP',$GIABAN,$SOTRANG,'$NGONNGU','$KICHTHUOC','$TRONGLUONG','$MOTA','$ANHBIA','$NGAYCAPNHAT',$SOLUONGTON,$MAL,$MANXB)";
if($db->query($sql))
{
http_response_code(201);
$SANPHAM = [
'MASP' => mysqli_insert_id($db),
'TENSP'=>$TENSP,
'GIABAN' => $GIABAN,
'SOTRANG' => $SOTRANG,
'NGONNGU'=>$NGONNGU,
'KICHTHUOC'=>$KICHTHUOC,
'TRONGLUONG'=>$TRONGLUONG,
'MOTA'=>$MOTA,
'ANHBIA'=>$ANHBIA,
'NGAYCAPNHAT'=> $NGAYCAPNHAT,
'SOLUONGTON'=>$SOLUONGTON,
'MAL'=>$MAL,
'MANXB'=>$MANXB,
];
echo json_encode($SANPHAM);
}
else
{
http_response_code(422);
}
}
?>