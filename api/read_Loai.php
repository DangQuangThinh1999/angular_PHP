<?php
include 'database.php';
$LOAI = [];
$sql = "SELECT * FROM LOAI";
if($result = $db->query($sql))
{
$i = 0;
while($row = $result->fetch_assoc())
{
$LOAI[$i]['MAL'] = $row['MAL'];
$LOAI[$i]['TENLOAI'] = $row['TENLOAI'];


$i++;
}
echo json_encode($LOAI);
}
else
{
http_response_code(404);
}
?>

