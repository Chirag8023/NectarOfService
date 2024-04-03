<?php
define('ADMIN_SOCIAL_BUZZ_BASE_PATH', dirname(__FILE__) . '/');
include ADMIN_SOCIAL_BUZZ_BASE_PATH .'../../assets/scripts/auth_check.php';

// Function to sanitize input
function sanitize_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Sanitize and validate input
    $id = sanitize_input($_POST["id"]);
    $new_url = sanitize_input($_POST["new_url"]);
    
    if (empty($id) || empty($new_url)) {
        $error = "Please fill in all fields.";
    } elseif (!is_numeric($id) || $id < 1 || $id > 6) {
        $error = "Invalid ID.";
    } else {
        // Load the JSON
        $json = file_get_contents(ADMIN_SOCIAL_BUZZ_BASE_PATH . '../../social_buzz/tweets.json');
        $data = json_decode($json, true);

        // Update URL for the specified ID
        if (isset($data[$id])) {
            $data[$id] = $new_url;
            $json = json_encode($data, JSON_PRETTY_PRINT);
            // Write updated data back to the file
            file_put_contents(ADMIN_SOCIAL_BUZZ_BASE_PATH . '../../social_buzz/tweets.json', $json);
            $success = "URL for ID $id has been updated.";
        } else {
            $error = "ID $id not found.";
        }
    }
    $_SESSION['success'] = $success;
    $_SESSION['error'] = $error;

    // Redirect to the same page to prevent form resubmission
    header("Location: " . $_SERVER["PHP_SELF"]);
    exit;
}

?>

<title>Admin Social Buzz</title>
<link rel="stylesheet" href="http://localhost/nectarofservice/admin/admin_style.css">

<body class="main-body">

    <?php include ADMIN_SOCIAL_BUZZ_BASE_PATH . 'admin_header.php'; ?>

    <main class="main-content" style="width:100vw; border-left:4px solid #000">

        <h2>Update URL for ID</h2>
        <form method="post">
            ID:
            <input type="number" name="id" min="1" max="6" required><br><br>
            New URL:
            <input type="text" name="new_url" required><br><br>
            <input type="submit" name="submit" value="Update">
        </form>
        <?php if(isset($_SESSION['success'])): ?>
        <p style="color:green;"><?php echo $_SESSION['success']; ?></p>
        <?php unset($_SESSION['success']); ?>
        <?php endif; ?>
        <?php if(isset($_SESSION['error'])): ?>
        <p style="color:red;"><?php echo $_SESSION['error']; ?></p>
        <?php unset($_SESSION['error']); ?>
        <?php endif; ?>

    </main>
</body>