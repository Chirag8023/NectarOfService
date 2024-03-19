<?php
// Database connection parameters
$servername = "localhost"; // Change this if your MySQL server is on a different host
$username = "root"; // Change this to your MySQL username
$password = ""; // Change this to your MySQL password
$database = "mydb"; // Change this to the name of your database

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

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
    echo "No donations found in the last 30 days.";
}

$conn->close();
?>
