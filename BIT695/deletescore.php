<?php
include('conekt.php');
$sid = $_GET['sid'];
$sql = "DELETE FROM Scoring WHERE sid='$sid'";

if ($conn->query($sql) === TRUE) {
    echo "Record deleted successfully";
} else {
    echo "Error deleting record: " . $conn->error;
}

$conn->close();
header('Location: ' . $_SERVER["HTTP_REFERER"].'#seek' );
?>