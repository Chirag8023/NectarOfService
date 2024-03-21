<?php
//define the base path of this file
define('ADMIN_END_CAMPAIGN_BASE_PATH', dirname(__FILE__) . '/');
//include the auth_check file
include ADMIN_END_CAMPAIGN_BASE_PATH .'../../assets/scripts/auth_check.php';
//include the database connection file
include ADMIN_END_CAMPAIGN_BASE_PATH .'../../assets/scripts/dbconnect.php';
// Start session if it's not already started
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fundraising Campaigns</title>
</head>
<body>

<h1>Fundraising Campaigns</h1>

<?php

// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["campaign_id"])) {
    // Update the goal to -1 for the specified campaign ID
    $campaign_id = $_POST["campaign_id"];
    $sql = "UPDATE fundraising_campaigns SET goal = -1 WHERE id = $campaign_id";
    if ($conn->query($sql) === TRUE) {
        echo "Goal updated successfully.";
    } else {
        echo "Error updating goal: " . $conn->error;
    }
}

// Fetch fundraising campaigns from the database
$sql = "SELECT id, title, created_at FROM fundraising_campaigns WHERE goal > current_amount";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<form method='post'>";
        echo "<input type='hidden' name='campaign_id' value='" . $row["id"] . "'>";
        echo "<p>Name: " . $row["title"]. " - Date: " . $row["created_at"]. " <button type='submit'>End Campaign</button></p>";
        echo "</form>";
    }
} else {
    echo "0 results";
}

$conn->close();
?>

</body>
</html>
