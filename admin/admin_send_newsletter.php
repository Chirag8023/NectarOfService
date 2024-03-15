<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

define('ADMIN_SEND_NEWSLETTER_BASE_PATH', dirname(__FILE__) . '/');

function sendNewsletter($conn, $newsletter_content) {
    // Retrieve subscribers from database
    $sql = "SELECT * FROM newsletter_subscribers";
    $result = $conn->query($sql);

    // If subscribers found, send email to each one
    if ($result->num_rows > 0) {
        // Set SMTP settings
        ini_set('SMTP', "127.0.0.1");
        ini_set('smtp_port', "1025");

        // Loop through each subscriber
        while($row = $result->fetch_assoc()) {
            $name = $row["name"];
            $email = $row["email"];
            $token = $row["token"];

            // Set email parameters
            $to = $email;
            $subject = 'NectarOfService Newsletter';
            $message = 'Hello ' . $name . ",\n\n" . $newsletter_content . "\n\n";
            $message .= "\n\nSincerely,\nNectarOfService Team";
            $message .= "\n\nTo unsubscribe from our newsletter, click On the link -> http://localhost/nectarofservice/assets/scripts/newsletter_unsubscribe.php?email=" . urlencode($email). "&token=" . $token;

            $headers = 'From: NectarOfService@gmail.com' . "\r\n" .
                       'Reply-To: NectarOfService@gmail.com' . "\r\n" ;

            // Send the email
            if(!mail($to, $subject, $message, $headers)) {
                throw new Exception('Email could not be sent.');
            }
        }
    } else {
        throw new Exception("No subscribers found.");
    }
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    try {
        // Check if the textarea is not empty
        if (empty($_POST['newsletter_content'])) {
            throw new Exception("Newsletter content cannot be empty.");
        }

        include ADMIN_SEND_NEWSLETTER_BASE_PATH .'../assets/scripts/dbconnect.php';
        sendNewsletter($conn, $_POST['newsletter_content']);
        $_SESSION['success_message'] = 'Email sent successfully.';
    } catch (Exception $e) {
        $_SESSION['error_message'] = $e->getMessage();
    }

    // Redirect to prevent form resubmission
    header("Location: {$_SERVER['PHP_SELF']}");
    exit;
}
?>

<h2>Compose Newsletter</h2>
<form method="post">
    <textarea name="newsletter_content" rows="10" cols="100" required></textarea>
    <br>
    <input type="submit" value="Send Newsletter">
    <br>
    <?php if(isset($_SESSION['success_message'])) { ?>
        <p style="color:green"><?php echo $_SESSION['success_message']; unset($_SESSION['success_message']); ?></p>
    <?php } ?>
    <?php if(isset($_SESSION['error_message'])) { ?>
        <p style="color:red"><?php echo $_SESSION['error_message']; unset($_SESSION['error_message']); ?></p>
    <?php } ?>
</form>