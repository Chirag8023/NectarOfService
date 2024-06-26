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

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Sanitizing and validating input
    $id = sanitize_input($_POST["id"]);
    $new_url = sanitize_input($_POST["new_url"]);
    
    if (empty($id) || empty($new_url)) {
        $error = "Please fill in all fields.";
    } elseif (!is_numeric($id) || $id < 1 || $id > 6) {
        $error = "Invalid Slot.";
    } else {
        // Loading the JSON
        $json = file_get_contents(ADMIN_SOCIAL_BUZZ_BASE_PATH . '../../social_buzz/tweets.json');
        $data = json_decode($json, true);

        // Updating URL for the specified ID
        if (isset($data[$id])) {
            $data[$id] = $new_url;
            $json = json_encode($data, JSON_PRETTY_PRINT);
            // Writing updated data back to the file
            file_put_contents(ADMIN_SOCIAL_BUZZ_BASE_PATH . '../../social_buzz/tweets.json', $json);
            $success = "URL for Slot $id has been updated.";
        } else {
            $error = "Slot $id not found.";
        }
    }
    $_SESSION['chi_success'] = $success;
    $_SESSION['chi_error'] = $error;

    // Redirecting to the same page to prevent form resubmission
    header("Location: " . $_SERVER["PHP_SELF"]);
    exit;
}

?>

<title>Admin Social Buzz</title>
<link rel="stylesheet" href="http://localhost/nectarofservice/admin/admin_style.css">

<body class="main-body">

    <?php include ADMIN_SOCIAL_BUZZ_BASE_PATH . 'admin_header.php'; ?>

    <main class="main-content" style="width:100vw; border-left:4px solid #000;max-height:80vh;">
        <a href="http://localhost/nectarofservice/admin/admin_main.php" style="position:absolute; color:#000; font-size:1.2rem; text-decoration:none; border-bottom:2px solid black;"> « Back</a>
        <h1 style="margin: 0rem 0 1rem 0;">Update Tweets</h1>
        <p style="text-align:center;">Fill the fields to display new tweet.</p><br>

        <form method="post" class="admin-panel-forms">
            <label>Slot:</label>
            <input type="number" name="id" min="1" max="6" required><br><br>
            <label>Tweet Url:</label>
            <input type="text" name="new_url" required><br><br>
            <input type="submit" name="submit" value="Update">
        </form>
    </main>

    <?php include ADMIN_SOCIAL_BUZZ_BASE_PATH .'admin_message_bar.php';?>

</body>