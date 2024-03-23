<?php
define('ADMIN_ADD_CAMPAIGN_BASE_PATH', dirname(__FILE__) . '/');
include ADMIN_ADD_CAMPAIGN_BASE_PATH .'../../assets/scripts/auth_check.php';

if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

include ADMIN_ADD_CAMPAIGN_BASE_PATH .'../../assets/scripts/dbconnect.php';

function handleFileUpload($file) {
    $fileName = $file['name'];
    $fileTmpName = $file['tmp_name'];
    $fileError = $file['error'];

    if ($fileError === 0) {
        $allowedExtensions = array('jpg', 'jpeg', 'png', 'webp');
        $fileExtension = strtolower(pathinfo($fileName, PATHINFO_EXTENSION));

        if (!in_array($fileExtension, $allowedExtensions)) {
            throw new Exception("Error: Only JPG, JPEG, PNG, and WEBP files are allowed.");
        }

        $newFileName = uniqid('', true) . '.' . $fileExtension;
        $uploadDestination = ADMIN_ADD_CAMPAIGN_BASE_PATH .'../../assets/images/' . $newFileName;
        if (!move_uploaded_file($fileTmpName, $uploadDestination)) {
            throw new Exception("Error uploading file.");
        }

        return $newFileName;
    } else {
        throw new Exception("Error uploading file.");
    }
}

function insertCampaign($conn, $title, $description, $goal, $imageFileName) {
    $stmt = $conn->prepare("INSERT INTO fundraising_campaigns (title, description, goal, image_filename) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("ssis", $title, $description, $goal, $imageFileName);

    if ($stmt->execute()) {
        return true;
    } else {
        throw new Exception("Error inserting data into database: " . $stmt->error);
    }
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    try {
        $title = $_POST['title'];
        $description = $_POST['description'];
        $goal = $_POST['goal'];

        if ($goal < 1) {
            throw new Exception("Error: Minimum goal should be 1.");
        }

        $newFileName = handleFileUpload($_FILES['image']);

        if (insertCampaign($conn, $title, $description, $goal, $newFileName)) {
            $_SESSION['chi_success'] = "Campaign created successfully";
            header("Location: " . $_SERVER['PHP_SELF']);
            exit;
        }
    } catch (Exception $e) {
        $_SESSION['chi_error'] = $e->getMessage();
        header("Location: " . $_SERVER['PHP_SELF']);
        exit;
    }
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Fundraising Campaigns</title>
    <link rel="stylesheet" href="http://localhost/nectarofservice/admin/admin_style.css">
</head>

<body class="main-body">

<?php include ADMIN_ADD_CAMPAIGN_BASE_PATH . 'admin_header.php'; ?>

<main class="main-content" style="width:100vw; border-left:4px solid #000">

<h2>Add New Campaign</h2>
<form method="post" action="" enctype="multipart/form-data">
    <label for="title">Title:</label>
    <input type="text" name="title" id="title" required><br><br>
    <label for="description">Description:</label>
    <textarea name="description" id="description" required></textarea><br><br>
    <label for="goal">Goal:</label>
    <input type="number" name="goal" id="goal" min="1" required><br><br>
    <label for="image">Image:</label>
    <input type="file" name="image" id="image" accept="image/jpeg,image/png,image/webp" required><br><br>
    <input type="submit" value="Create Campaign">
</form>
<?php
if (isset($_SESSION['chi_error'])) {
    echo '<div style="color:red;">' . $_SESSION['chi_error'] . '</div>';
    unset($_SESSION['chi_error']);
}
if (isset($_SESSION['chi_success'])) {
    echo '<div style="color:green;">' . $_SESSION['chi_success'] . '</div>';
    unset($_SESSION['chi_success']);
}
?>

</main>
</body>
</html>