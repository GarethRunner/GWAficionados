<?php
include('conekt.php');
$gid = $_GET['gid'];
$sql = "DELETE FROM Games_assigned WHERE gid='$gid'";

if ($conn->query($sql) === TRUE) {
    echo "Record deleted successfully";
} else {
    echo "Error deleting record: " . $conn->error;
}

$conn->close();
header('Location: ' . $_SERVER["HTTP_REFERER"].'#seek' );
?>