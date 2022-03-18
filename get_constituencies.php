<?php
include('conn.php');

$sql = "SELECT * FROM constituency WHERE countyid = '".$_POST['id']."'";
$result = mysqli_query($conn, $sql);


    // output data of each row
while($row = mysqli_fetch_assoc($result)) {


	$data['value']=$row['id'];
	$data['label']=$row['constituency_name'];
	$json[]=$data;      
}
echo json_encode($json);


mysqli_close($conn);
?> 