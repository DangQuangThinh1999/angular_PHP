<?php
include 'database.php';
$postdata = file_get_contents("php://input");
if(isset($postdata) && !empty($postdata))
{
$request = json_decode($postdata,true);
// Validate.
if(trim($request['TENLOAI']) === '' )
{
return http_response_code(400);
}
$TENLOAI = mysqli_real_escape_string($db, trim($request['TENLOAI']));


$sql = "INSERT INTO LOAI (MAL,TENLOAI) VALUES (null,'$TENLOAI')";
if($db->query($sql))
{
http_response_code(201);
$LOAI = [
'MAL' => mysqli_insert_id($db),
'TENLOAI'=>$TENLOAI
];
echo json_encode($LOAI);
}
else
{
http_response_code(422);
}
}
?>