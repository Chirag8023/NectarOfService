<?php
// Database connection details
$servername = "localhost";
$username = "root"; // Replace with your MySQL username
$password = ""; // Replace with your MySQL password
$dbname = "mydb"; // Replace with your database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Construct the query to get total amount donated for each date for the last 30 days
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

    // Set the content type header to JSON
    header('Content-Type: application/json');

    // Send data as JSON
    echo json_encode($data);
} else {
    echo "Error: " . $conn->error;
}

// Close connection
$conn->close();
?>
