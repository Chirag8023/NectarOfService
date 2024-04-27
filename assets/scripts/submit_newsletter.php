<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["subscriber_name"]) && isset($_POST["subscriber_email"])) {
    
    // Include dbconnect.php here
    include "dbconnect.php";

    $subscriber_name = filter_var(trim($_POST["subscriber_name"]), FILTER_SANITIZE_STRING);
    $subscriber_email = filter_var(trim($_POST["subscriber_email"]), FILTER_SANITIZE_EMAIL);

    if (filter_var($subscriber_email, FILTER_VALIDATE_EMAIL)) {
        $stmt = $conn->prepare("SELECT id FROM newsletter_subscribers WHERE email = ?");
        $stmt->bind_param("s", $subscriber_email);
        $stmt->execute();
        $result = $stmt->get_result();
        
        if ($result->num_rows == 0) {
            $stmt = $conn->prepare("INSERT INTO newsletter_subscribers (name, email) VALUES (?, ?)");
            $stmt->bind_param("ss", $subscriber_name, $subscriber_email);

            if ($stmt->execute()) {
                $_SESSION['chi_success_message'] = "Thank you for subscribing!";
            } 
        }
        else {
            $_SESSION['chi_success_message'] = "Thank you for subscribing!";
        }
        $stmt->close();
    } else{
        $_SESSION['chi_success_message'] = "Something went wrong! Please Try again.";
    }
    
    $conn->close();
    
    if(isset($_SESSION['chi_success_message'])){
        $response = [
            'message' => $_SESSION['chi_success_message']
        ];
    }

    unset($_SESSION['chi_success_message']);

    header('Content-Type: application/json');
    echo json_encode($response);
    exit;
}
?>
