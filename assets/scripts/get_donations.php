<?php
// Server Side part of the fetch request
// Script to get latest 10 donations
//
include 'dbconnect.php'; // Include your database connection

// Fetching top 10 donations from the database
$sql = "SELECT * FROM donations ORDER BY donation_time DESC LIMIT 10";
$result = $conn->query($sql);

// Preparing the response
$response = array();
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        // Truncating campaign_name field if it's too long
        $row['campaign_name'] = strlen($row['campaign_name']) > 20 ? substr($row['campaign_name'], 0, 20) . '...' : $row['campaign_name'];
        $response[] = $row;
    }
}

// Output JSON response
header('Content-Type: application/json');
echo json_encode($response);
?>
