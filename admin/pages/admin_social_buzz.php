<!DOCTYPE html>
<html>
<head>
    <title>URL Updater</title>
</head>
<body>
    <h2>Update URL for ID</h2>
    <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
        ID:
        <input type="number" name="id" min="1" max="6" required><br><br>
        New URL:
        <input type="text" name="new_url" required><br><br>
        <input type="submit" name="submit" value="Update">
    </form>

    <?php
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
            echo "<p>Please fill in all fields.</p>";
        } elseif (!is_numeric($id) || $id < 1 || $id > 6) {
            echo "<p>Invalid ID.</p>";
        } else {
            // Load the JSON
            $json = file_get_contents('tweets.json');
            $data = json_decode($json, true);

            // Update URL for the specified ID
            if (isset($data[$id])) {
                $data[$id] = $new_url;
                $json = json_encode($data, JSON_PRETTY_PRINT);
                // Write updated data back to the file
                file_put_contents("tweets.json", $json);
                echo "<p>URL for ID $id has been updated.</p>";
            } else {
                echo "<p>ID $id not found.</p>";
            }
        }
    }
    ?>
</body>
</html>
