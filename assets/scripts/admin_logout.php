<?php
//start session if not started
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

session_destroy();
header("Location:http://localhost/nectarofservice/admin/admin_login.php");

?>