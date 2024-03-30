<?php
// session start if not started
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

// Check if the user is not logged in, redirect to login page
if (!isset($_SESSION['chi_username'])) {
    header("Location:http://localhost/nectarofservice/admin/admin_login.php");
    exit;
}
?>