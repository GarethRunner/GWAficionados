<?php
include('conekt.php');
$tid = $_GET['tid'];
$sql = "DELETE FROM Board_games WHERE tid='$tid'";

if ($conn->query($sql) === TRUE) {
    echo "Record deleted successfully";
} else {
    echo "Error deleting record: " . $conn->error;
}

$conn->close();
header('Location: ' . $_SERVER["HTTP_REFERER"].'#new' );
?>