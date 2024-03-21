<?php
// Start session
session_start();

// Generate CSRF token
$csrf_token = bin2hex(random_bytes(32));
$_SESSION['csrf_token'] = $csrf_token;
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
// Connect to your MySQL database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "mydb";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["campaign_id"], $_POST["csrf_token"])) {
    // Validate CSRF token
    if (!hash_equals($_SESSION['csrf_token'], $_POST['csrf_token'])) {
        die("CSRF token validation failed.");
    }
    
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
        echo "<input type='hidden' name='csrf_token' value='" . $csrf_token . "'>";
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
