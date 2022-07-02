<?php
include 'database.php';
$TENXB = $_GET['TENXB'];
$SANPHAM = [];
$sql = "SELECT MASP, TENSP, GIABAN, SOTRANG, NGONNGU, KICHTHUOC, TRONGLUONG, MOTA, ANHBIA, NGAYCAPNHAT, SOLUONGTON, loai.TENLOAI, nhaxuatban.TENXB FROM sanpham, loai,nhaxuatban WHERE sanpham.mal = loai.mal and nhaxuatban.MANXB=sanpham.MANXB and nhaxuatban.TENXB='$TENXB'";
if($result = $db->query($sql))
{
$i = 0;
while($row = $result->fetch_assoc())
{
$SANPHAM[$i]['MASP'] = $row['MASP'];
$SANPHAM[$i]['TENSP'] = $row['TENSP'];
$SANPHAM[$i]['GIABAN'] = $row['GIABAN'];
$SANPHAM[$i]['SOTRANG'] = $row['SOTRANG'];
$SANPHAM[$i]['NGONNGU'] = $row['NGONNGU'];
$SANPHAM[$i]['KICHTHUOC'] = $row['KICHTHUOC'];
$SANPHAM[$i]['TRONGLUONG'] = $row['TRONGLUONG'];
$SANPHAM[$i]['MOTA'] = $row['MOTA'];
$SANPHAM[$i]['ANHBIA'] = $row['ANHBIA'];
$SANPHAM[$i]['NGAYCAPNHAT'] = $row['NGAYCAPNHAT'];
$SANPHAM[$i]['SOLUONGTON'] = $row['SOLUONGTON'];
$SANPHAM[$i]['TENLOAI'] = $row['TENLOAI'];
$SANPHAM[$i]['TENXB'] = $row['TENXB'];
$i++;
}
echo json_encode($SANPHAM);
}
else
{
http_response_code(404);
}

?>