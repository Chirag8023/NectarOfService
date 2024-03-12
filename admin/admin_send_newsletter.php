<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
?>

<h2>Compose Newsletter</h2>
<form method="post" action="http://localhost/nectarofservice/admin/scripts/admin_send_newsletter_script.php">
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