<?php
include('conekt.php');
$id = $_GET['id'];
$sql = "DELETE FROM Players WHERE id='$id'";

if ($conn->query($sql) === TRUE) {
    echo "Record deleted successfully";
} else {
    echo "Error deleting record: " . $conn->error;
}

$conn->close();
header('Location: ' . $_SERVER["HTTP_REFERER"].'#seek' );
?>