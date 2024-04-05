<?php
//defining a base path of this file
define('CHART_AMOUNT_DATA_BASE_PATH', dirname(__FILE__) . '/');
include CHART_AMOUNT_DATA_BASE_PATH . '../../assets/scripts/auth_check.php';
include CHART_AMOUNT_DATA_BASE_PATH . '../../assets/scripts/dbconnect.php';

// the query to get total amount donated for each date for the last 30 days
$query = "SELECT DATE(donation_time) AS donation_date, SUM(amount) AS total_amount 
          FROM donations 
          WHERE donation_time >= DATE_SUB(CURDATE(), INTERVAL 30 DAY) 
          GROUP BY donation_date 
          ORDER BY donation_date ASC";

$result = $conn->query($query);

if ($result) {
    $data = array();
    while ($row = $result->fetch_assoc()) {
        $data[] = $row;
    }

    header('Content-Type: application/json');

    // Sending data as JSON
    echo json_encode($data);
} else {
    echo "Error: " . $conn->error;
}

$conn->close();
?>