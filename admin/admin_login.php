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
<svg id='patternId' width='100%' height='100%' xmlns='http://www.w3.org/2000/svg'><defs><pattern id='a' patternUnits='userSpaceOnUse' width='81' height='81' patternTransform='scale(3) rotate(120)'><rect x='0' y='0' width='100%' height='100%' fill='#ffc600'/><path d='M0 0v40h40V0H0zm40 40v40h40V40H40zM4 4h32v32H4V4zm4 4v24h24V8H8zm4 4h16v16H12V12zm4.043 3.988v8.004h8.004v-8.004h-8.004zM44 44h32v32H44V44zm4 4v24h24V48H48zm4 4h16v16H52V52zm4.043 3.984v8.006h8.004v-8.006h-8.004z' transform='translate(0.5,0)' stroke-width='1' stroke='none' fill='hsla(200,94.5%,14.3%,1)'/><path d='M44 4v32h32V4H44zm4 4h24v24H48V8zm4 4v16h16V12H52zm4 4h8v8h-8v-8zM4 44v32h32V44H4zm4 4h24v24H8V48zm4 4v16h16V52H12zm4 4h8v8h-8v-8z' transform='translate(0.5,0)' stroke-width='1' stroke='none' fill='#f30029'/></pattern></defs><rect width='800%' height='800%' transform='translate(0,0)' fill='url(#a)'/></svg>

    <h3>NectarOfService</h3>
    <div class="login-container">
        <h2>Admin Login</h2>
        <p>Welcome Back! Enter your credentials to<br>access admin panel.</p>
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
    <?php include 'status_checker/status_checker.php'; ?>
</body>