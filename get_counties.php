<?php
include('conn.php');

$sql = "SELECT * FROM county";
$result = mysqli_query($conn, $sql);


    // output data of each row
while($row = mysqli_fetch_assoc($result)) {


	$data['value']=$row['countyid'];
	$data['label']=$row['county'];
	$json[]=$data;      
}
echo json_encode($json);


mysqli_close($conn);
?> 