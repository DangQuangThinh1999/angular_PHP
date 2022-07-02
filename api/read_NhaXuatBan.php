<?php
include 'database.php';
$NHAXUATBAN = [];
$sql = "SELECT * FROM NHAXUATBAN";
if($result = $db->query($sql))
{
$i = 0;
while($row = $result->fetch_assoc())
{
$NHAXUATBAN[$i]['MANXB'] = $row['MANXB'];
$NHAXUATBAN[$i]['TENXB'] = $row['TENXB'];
$NHAXUATBAN[$i]['DIACHI'] = $row['DIACHI'];
$NHAXUATBAN[$i]['DIENTHOAI'] = $row['DIENTHOAI'];


$i++;
}
echo json_encode($NHAXUATBAN);
}
else
{
http_response_code(404);
}
?>

