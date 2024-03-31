<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
define('NEWSLETTER_BASE_PATH', dirname(__FILE__) . '/');
include NEWSLETTER_BASE_PATH.'../scripts/dbconnect.php';

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["subscriber_name"]) && isset($_POST["subscriber_email"])) {
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
            $_SESSION['chi_success_message'] = "See you soon!";
        }
        $stmt->close();
    } else{
        $_SESSION['chi_success_message'] = "Something went wrong! Please Try again.";
    }
    
    $conn->close();
    
    // Redirect to prevent form resubmission
    header("Location: {$_SERVER['PHP_SELF']}");
    exit;
}
?>

<link rel="stylesheet" href="http://localhost/NectarOfService/assets/main_style.css">
<div class="newsletter">
    <div><h2>Join<br>Newsletter</h2></div>
    <div>
    <p>Get updates about how your contributions are making impact!</p>
    <?php if (isset($_SESSION['chi_success_message'])) { ?>
        <p style="color: rgb(255, 255, 255);"><?php echo $_SESSION['chi_success_message']; ?></p>
        <script>
        window.onload = function() {
        let newsletterSection = document.querySelector('.newsletter');
        if (newsletterSection) {
            newsletterSection.scrollIntoView({ behavior: 'smooth', block: 'start' });
            }
        }
        </script>
        <?php unset($_SESSION['chi_success_message']); ?>
    <?php } ?>
    <form method="post">
        <input type="text" id="name" name="subscriber_name" placeholder="name" required>
        <input type="email" id="email" name="subscriber_email" placeholder="email" required>
        <button type="submit">-></button>
    </form>
    </div>
</div>
