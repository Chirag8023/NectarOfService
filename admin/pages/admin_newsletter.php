<?php
define('ADMIN_NEWSLETTER_BASE_PATH', dirname(__FILE__) . '/');
include ADMIN_NEWSLETTER_BASE_PATH .'../../assets/scripts/auth_check.php';
include ADMIN_NEWSLETTER_BASE_PATH .'../../assets/scripts/dbconnect.php';


function sendNewsletter($conn, $newsletter_content) {
    // Retrieving subscribers from database
    $sql = "SELECT * FROM newsletter_subscribers";
    $result = $conn->query($sql);

    // If subscribers found, sending email to each one
    if ($result->num_rows > 0) {
        // Setting SMTP settings
        ini_set('SMTP', "127.0.0.1");
        ini_set('smtp_port', "1025");

        // Loopping through each subscriber
        while($row = $result->fetch_assoc()) {
            $name = $row["name"];
            $email = $row["email"];
            $token = $row["token"];

            // Setting email parameters
            $to = $email;
            $subject = 'NectarOfService Newsletter';
            $message = 'Hello ' . $name . ",\n\n" . $newsletter_content . "\n\n";
            $message .= "\n\nSincerely,\nNectarOfService Team";
            $message .= "\n\nTo unsubscribe from our newsletter, click On the link -> http://localhost/nectarofservice/assets/scripts/newsletter_unsubscribe.php?email=" . urlencode($email). "&token=" . $token;

            $headers = 'From: NectarOfService@gmail.com' . "\r\n" .
                       'Reply-To: NectarOfService@gmail.com' . "\r\n" ;

            // Sending email
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
        if (empty($_POST['newsletter_content'])) {
            throw new Exception("Newsletter content cannot be empty.");
        }

        sendNewsletter($conn, $_POST['newsletter_content']);
        $_SESSION['chi_success_message'] = 'Email sent successfully.';
    } catch (Exception $e) {
        $_SESSION['chi_error_message'] = $e->getMessage();
    }

    // Redirecting to prevent form resubmission
    header("Location: {$_SERVER['PHP_SELF']}");
    exit;
}
?>

<title>Admin Newsletter</title>
<link rel="stylesheet" href="http://localhost/nectarofservice/admin/admin_style.css">

<body class="main-body">

    <?php include ADMIN_NEWSLETTER_BASE_PATH . 'admin_header.php'; ?>

    <main class="main-content" style="width:100vw; border-left:4px solid #000">

        <h2>Compose Newsletter</h2>
        <form method="post">
            <textarea name="newsletter_content" rows="10" cols="100" required></textarea>
            <br>
            <input type="submit" value="Send Newsletter">
            <br>
            <?php if(isset($_SESSION['chi_success_message'])) { ?>
            <p style="color:green">
                <?php echo $_SESSION['chi_success_message']; unset($_SESSION['chi_success_message']); ?></p>
            <?php } ?>
            <?php if(isset($_SESSION['chi_error_message'])) { ?>
            <p style="color:red"><?php echo $_SESSION['chi_error_message']; unset($_SESSION['chi_error_message']); ?>
            </p>
            <?php } ?>
        </form>

    </main>
</body>