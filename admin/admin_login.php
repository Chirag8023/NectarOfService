<?php
// Start session if not started
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

// If already logged in, redirect to admin_main.php
if (isset($_SESSION['username'])) {
    header("Location: http://localhost/nectarofservice/admin/admin_main.php");
    exit;
}

// Define an array of usernames and hashed passwords
$users = array(
    'admin1' => '$2y$10$Y7EWRGs3cw4Hx2Dnx7bPRu59k5dqUjUAwi0x2MOdET9bdy0LiQvzm', // Password is "password1"
    'admin2' => '$2y$10$ZIldSIvqeOmft4ORq5MAjuttW47rymuTjl7NYit4lUwMft4HJ04Ty'  // Password is "password2"
);

// Check if the form has been submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Check if the username exists in the array
    if (array_key_exists($username, $users)) {
        // Verify the password using password_verify function
        if (password_verify($password, $users[$username])) {
            // Set the session variable to the username
            $_SESSION['username'] = $username;

            // Redirect to a secure page on successful login
            header("Location: http://localhost/nectarofservice/admin/admin_main.php");
            exit;
        } else {
            // Store error message in session
            $_SESSION['error_message'] = "Invalid username or password!";
        }
    } else {
        // Store error message in session
        $_SESSION['error_message'] = "Invalid username or password!";
    }

    // Redirect to the same page to prevent form resubmission
    header("Location: {$_SERVER['REQUEST_URI']}");
    exit;
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="admin_style.css">
</head>
<body class="admin-login">
    <div class="login-container">
    <h3>NectarOfService</h3>
    <h2>Admin Login</h2>
    <?php if (isset($_SESSION['error_message'])) { ?>
        <p style="color:#ff0037; font-weight: 600;"><?php echo $_SESSION['error_message']; unset($_SESSION['error_message']); ?></p>
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
</html>
