<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
?>

<h2>Add New Campaign</h2>
<form method="post" action="http://localhost/nectarofservice/admin/scripts/admin_add_campaigns_script.php" enctype="multipart/form-data">
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
if (isset($_SESSION['error'])) {
    echo '<div style="color:red;">' . $_SESSION['error'] . '</div>';
    unset($_SESSION['error']);
}
if (isset($_SESSION['success'])) {
    echo '<div style="color:green;">' . $_SESSION['success'] . '</div>';
    unset($_SESSION['success']);
}
?>
