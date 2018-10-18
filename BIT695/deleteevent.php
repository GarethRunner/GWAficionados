<?php
include('conekt.php');
$eid = $_GET['eid'];
$sql = "DELETE FROM Event_schedule WHERE eid='$eid'";

if ($conn->query($sql) === TRUE) {
    echo "Record deleted successfully";
} else {
    echo "Error deleting record: " . $conn->error;
}

$conn->close();
header('Location: ' . $_SERVER["HTTP_REFERER"].'#seek' );
?>