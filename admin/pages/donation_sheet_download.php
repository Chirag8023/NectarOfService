<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
// Include database connection configuration
require '../assets/scripts/dbconnect.php';

function fetchDonations($pdo, $fromDate, $toDate) {
    // Query to fetch donations within the date range
    $query = "SELECT id, name, amount, donation_time, campaign_name FROM donations WHERE donation_time BETWEEN :fromDate AND :toDate";
    $statement = $pdo->prepare($query);
    $statement->bindParam(':fromDate', $fromDate);
    $statement->bindParam(':toDate', $toDate);
    $statement->execute();
    return $statement->fetchAll(PDO::FETCH_ASSOC);
}

try {
    // Establish PDO connection
    $pdo = new PDO("mysql:host=$host;dbname=$database", $username, $password);
    // Set PDO to throw exceptions on error
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $error = '';
    if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['submit'])) {
        // Get dates from form
        $fromDate = $_POST['from_date'];
        // Create DateTime object from $toDate and add one day
        $toDate = new DateTime($_POST['to_date']);
        $toDate->modify('+1 day');
        $toDate = $toDate->format('Y-m-d');
        
        if ($fromDate > $toDate) {
            $_SESSION['chi_error'] = "Error: From Date cannot be greater than To Date.";
            session_write_close(); // Save session data before redirect
            header("Location: " . $_SERVER["PHP_SELF"]);
            exit();
        } else {

        // Fetch donations
        $donations = fetchDonations($pdo, $fromDate, $toDate);

        // Set headers for CSV file download
        header('Content-Type: text/csv');
        header("Content-Disposition: attachment; filename=$fromDate - $toDate donations.csv");
        
        // Create a file pointer connected to the output stream
        $output = fopen('php://output', 'w');
        
        // Write the CSV headers
        fputcsv($output, array('Donation ID', 'Name', 'Amount', 'Donation Time', 'Campaign Name'));

        // Loop through donations and write each row to the CSV file
        foreach ($donations as $donation) {
            fputcsv($output, $donation);
        }

        // Close the file pointer
        fclose($output);
        exit(); // Stop script execution after generating the CSV file
        }
    }
} catch (PDOException $e) {
    // Log the error message and display a user-friendly message
    error_log("Database error: " . $e->getMessage());
    die("An error occurred. Please try again later.");
}
?>

    <h2>Donation Records</h2>
    <p>Download records within date range.</p>
    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
        <label for="from_date">From Date:</label>
        <input type="date" id="from_date" name="from_date" required>
        <label for="to_date">To Date:</label>
        <input type="date" id="to_date" name="to_date" required>
        <button type="submit" name="submit">Generate CSV</button>
        <?php if (isset($_SESSION['chi_error'])) { ?>
        <p style="color:red"><?php echo $_SESSION['chi_error']; unset($_SESSION['chi_error']); ?></p>
        <?php } ?>
    </form>

