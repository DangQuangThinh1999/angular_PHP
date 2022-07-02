<?php
include 'database.php';
$ADMIN = [];
$sql = "SELECT * FROM `ADMIN`";
if($result = $db->query($sql))
{
$i = 0;
while($row = $result->fetch_assoc())
{
$ADMIN[$i]['MAAD'] = $row['MAAD'];
$ADMIN[$i]['USER'] = $row['USER'];
$ADMIN[$i]['PASSWORD'] = $row['PASSWORD'];
$ADMIN[$i]['HOTEN'] = $row['HOTEN'];


$i++;
}
echo json_encode($ADMIN);
}
else
{
http_response_code(404);
}
?>

