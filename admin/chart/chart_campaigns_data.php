<?php
//define a base path of this file
define('CHART_CAMPAIGNS_DATA_BASE_PATH', dirname(__FILE__) . '/');
include CHART_CAMPAIGNS_DATA_BASE_PATH . '../../assets/scripts/auth_check.php';
include CHART_CAMPAIGNS_DATA_BASE_PATH . '../../assets/scripts/dbconnect.php';


// We're asking the database for the total amount of donations from the last 30 days
$sql = "SELECT SUM(amount) AS total_amount FROM donations WHERE donation_time >= DATE_SUB(CURDATE(), INTERVAL 30 DAY)";

$result = $conn->query($sql);

$response = array();

if ($result->num_rows > 0) {
    // We take the total amount and put it in our response
    $row = $result->fetch_assoc();
    $response['total_amount'] = $row["total_amount"];

    // We're asking the database for the total amount of donations for each campaign from the last 30 days
    $campaign_sql = "SELECT campaign_name, SUM(amount) AS campaign_total FROM donations WHERE donation_time >= DATE_SUB(CURDATE(), INTERVAL 30 DAY) GROUP BY campaign_name";

    $campaign_result = $conn->query($campaign_sql);

    if ($campaign_result->num_rows > 0) {
        // We take the total amount for each campaign and put it in our response
        $campaign_data = array();
        while ($campaign_row = $campaign_result->fetch_assoc()) {
            $campaign_data[] = array(
                'campaign_name' => $campaign_row["campaign_name"],
                'campaign_total' => $campaign_row["campaign_total"],
            );
        }
        $response['campaigns'] = $campaign_data;
        // We tell the browser we're sending it JSON data
        header('Content-Type: application/json');
        // We send the response
        echo json_encode($response);
    } else {
        echo "Error: " . $conn->error;
    }
} else {
    echo "Error: " . $conn->error;
}

// We're done talking to the database, so we say goodbye
$conn->close();
?>