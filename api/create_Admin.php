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
$USER = mysqli_real_escape_string($db, trim($request['USER']));
$PASSWORD = mysqli_real_escape_string($db, trim($request['PASSWORD']));
$HOTEN = mysqli_real_escape_string($db, trim($request['HOTEN']));


$sql = "INSERT INTO ADMIN (MAAD,USER,PASSWORD,HOTEN) VALUES (null,'$USER','$PASSWORD','$HOTEN')";
if($db->query($sql))
{
http_response_code(201);
$ADMIN = [
'MAAD' => mysqli_insert_id($db),
'USER'=>$USER,
'PASSWORD' => $PASSWORD,
'HOTEN' => $HOTEN
];
echo json_encode($ADMIN);
}
else
{
http_response_code(422);
}
}
?>