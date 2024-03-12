<?php
// Check if both email and token parameters are present in the URL
if(isset($_GET['email']) && isset($_GET['token'])) {
    include 'dbconnect.php';
    // Retrieve the email and token from the URL parameters
    $email = $_GET['email'];
    $token = $_GET['token'];

    // Prepare SQL statement with placeholders
    $sql = "DELETE FROM newsletter_subscribers WHERE email = ? AND token = ?";
    $stmt = $conn->prepare($sql);

    // Bind parameters to the prepared statement
    $stmt->bind_param("ss", $email, $token);

    // Execute the prepared statement
    if ($stmt->execute()) {
        // Check the number of affected rows
        if ($stmt->affected_rows > 0) {
            echo "You have successfully unsubscribed from our newsletter.";
        } else {
            echo "Invalid email or token. Please check your unsubscribe link.";
        }
    } else {
        echo "Error deleting record: " . $stmt->error;
    }

    // Close prepared statement
    $stmt->close();

    // Close database connection
    $conn->close();
} else {
    // Redirect to homepage or display an error message
    header("Location: http://localhost/nectarofservice/assets/landing_page.php");
    exit;
}
?>
