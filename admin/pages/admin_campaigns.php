<?php
define('ADMIN_CAMPAIGNS_BASE_PATH', dirname(__FILE__) . '/');
include ADMIN_CAMPAIGNS_BASE_PATH .'../../assets/scripts/auth_check.php';
include ADMIN_CAMPAIGNS_BASE_PATH .'../../assets/scripts/dbconnect.php';

function handleFileUpload($file) {
    $fileName = $file['name'];
    $fileTmpName = $file['tmp_name'];
    $fileError = $file['error'];

    if ($fileError === 0) {
        $allowedExtensions = array('jpg', 'jpeg', 'png', 'webp');
        $fileExtension = strtolower(pathinfo($fileName, PATHINFO_EXTENSION));

        if (!in_array($fileExtension, $allowedExtensions)) {
            throw new Exception("Only JPG, JPEG, PNG, and WEBP files are allowed.");
        }

        $newFileName = uniqid('', true) . '.' . $fileExtension;
        $uploadDestination = ADMIN_CAMPAIGNS_BASE_PATH .'../../assets/images/' . $newFileName;
        if (!move_uploaded_file($fileTmpName, $uploadDestination)) {
            throw new Exception("Error uploading file.");
        }

        return $newFileName;
    } else {
        throw new Exception("Error uploading file.");
    }
}

function addCampaign($conn, $title, $description, $goal, $imageFileName) {
    $stmt = $conn->prepare("INSERT INTO fundraising_campaigns (title, description, goal, image_filename) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("ssis", $title, $description, $goal, $imageFileName);

    if ($stmt->execute()) {
        return true;
    } else {
        throw new Exception("Error inserting data into database: " . $stmt->error);
    }
}

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["action"])) {
    try {
        if ($_POST["action"] == "add") {
            $title = $_POST['title'];
            $description = $_POST['description'];
            $goal = $_POST['goal'];

            if ($goal < 1) {
                throw new Exception("Minimum goal should be 1.");
            }

            $newFileName = handleFileUpload($_FILES['image']);

            if (addCampaign($conn, $title, $description, $goal, $newFileName)) {
                $_SESSION['chi_success'] = "Campaign created successfully";
                header("Location: " . $_SERVER['PHP_SELF']);
                exit;
            }
        } elseif ($_POST["action"] == "end") {
            if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["end_campaign_id"])) {
                $campaign_id = $_POST["end_campaign_id"];
                $sql = "UPDATE fundraising_campaigns SET goal = -1 WHERE id = $campaign_id";
                if ($conn->query($sql) === TRUE) {
                    $_SESSION['chi_success'] = "Campaign ended successfully.";
                    header("Location: " . $_SERVER['PHP_SELF']);
                    exit;
                } else {
                    throw new Exception("Error ending the campaign: " . $conn->error);
                }
            }
        }
    } catch (Exception $e) {
        $_SESSION['chi_error'] = $e->getMessage();
        header("Location: " . $_SERVER['PHP_SELF']);
        exit;
    }
}
?>

<title>Admin Campaigns</title>
<link rel="stylesheet" href="http://localhost/nectarofservice/admin/admin_style.css">

<body class="main-body">

    <?php include ADMIN_CAMPAIGNS_BASE_PATH . 'admin_header.php'; ?>

    <main class="main-content" style="width:100vw; border-left:4px solid #000;max-height:80vh;">

        <h1>Add Campaign</h1>
        <form method="post" enctype="multipart/form-data">
            <input type="hidden" name="action" value="add">
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

        <hr>

        <h1>End Campaign</h1>

        <?php
$sql = "SELECT id, title, created_at FROM fundraising_campaigns WHERE goal > current_amount";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "<form method='post' style='display:flex; justify-content:space-around; align-items:center; font-size:1.3rem; margin-top:2rem;'>";
        echo "<input type='hidden' name='action' value='end'>";
        echo "<input type='hidden' name='end_campaign_id' value='" . $row["id"] . "'>";
        echo "<p>" . $row["title"]. "</p> <p> Started: " . $row["created_at"]. "</p> <button type='submit'>End Campaign</button>";
        echo "</form>";
    }
} else {
    echo "No ongoing campaigns found.";
}

$conn->close();
?>
    </main>

    <div class="admin_campaign_message_bar">
        <p>Message:</p>
        <?php
if (isset($_SESSION['chi_error'])) {
    echo '<div style="color:#ff0037; font-weight:600;">' . $_SESSION['chi_error'] . '</div>';
    unset($_SESSION['chi_error']);
}
if (isset($_SESSION['chi_success'])) {
    echo '<div style="color:green;">' . $_SESSION['chi_success'] . '</div>';
    unset($_SESSION['chi_success']);
}
?>
    </div>


</body>