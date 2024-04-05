<?php
// Starting session if not started
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

// If already logged in, redirect to admin_main.php
if (isset($_SESSION['chi_username'])) {
    header("Location: http://localhost/nectarofservice/admin/admin_main.php");
    exit;
}

// Defined an array of usernames and hashed passwords
$users = array(
    'admin1' => '$2y$10$Y7EWRGs3cw4Hx2Dnx7bPRu59k5dqUjUAwi0x2MOdET9bdy0LiQvzm', // Password is "password1"
    'admin2' => '$2y$10$ZIldSIvqeOmft4ORq5MAjuttW47rymuTjl7NYit4lUwMft4HJ04Ty'  // Password is "password2"
);

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];

    if (array_key_exists($username, $users)) {
        if (password_verify($password, $users[$username])) {
            // Setting the session variable to the username
            $_SESSION['chi_username'] = $username;

            // Redirect to a secure page on successful login
            header("Location: http://localhost/nectarofservice/admin/admin_main.php");
            exit;
        } else {
            $_SESSION['chi_error_message'] = "Invalid username or password!";
        }
    } else {
        $_SESSION['chi_error_message'] = "Invalid username or password!";
    }

    // Redirecting to the same page to prevent form resubmission
    header("Location: {$_SERVER['REQUEST_URI']}");
    exit;
}

?>

<title>Admin Login</title>
<link rel="stylesheet" href="http://localhost/nectarofservice/admin/admin_style.css">

<body class="admin-login">
    <div class="login-container">
        <h3>NectarOfService</h3>
        <h2>Admin Login</h2>
        <?php if (isset($_SESSION['chi_error_message'])) { ?>
        <p style="color:#ff0037; font-weight: 600;">
            <?php echo $_SESSION['chi_error_message']; unset($_SESSION['chi_error_message']); ?></p>
        <?php } ?>
        <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
            <label for="username">Username:</label><br>
            <input type="text" id="username" name="username" required><br><br>
            <label for="password">Password:</label><br>
            <input type="password" id="password" name="password" required><br><br>
            <button type="submit">Login</button>
        </form>
    </div>
</body>