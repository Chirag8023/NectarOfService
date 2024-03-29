<?php
// Define the base path of this file
define('CHART_PEOPLE_DATA_BASE_PATH', dirname(__FILE__) . '/');
include CHART_PEOPLE_DATA_BASE_PATH . '../../assets/scripts/auth_check.php';
include CHART_PEOPLE_DATA_BASE_PATH . '../../assets/scripts/dbconnect.php';

// Query to retrieve the last 30 dates and the count of donations for each date
$sql = "SELECT DATE(donation_time) AS donation_date, COUNT(*) AS donation_count FROM donations WHERE donation_time >= DATE(NOW()) - INTERVAL 30 DAY GROUP BY donation_date ORDER BY donation_date ASC";

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $data = array();

    // Fetch data from the result set
    while($row = $result->fetch_assoc()) {
        $data[$row['donation_date']] = $row['donation_count'];
    }

    // Send JSON response
    header('Content-Type: application/json');
    echo json_encode($data);
} else {
    echo "Error: " . $conn->error;
}

$conn->close();
?>
