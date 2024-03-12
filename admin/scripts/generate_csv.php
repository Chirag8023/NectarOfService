<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
define('ADMIN_DONATIONS_DOWNLOAD_BASE_PATH', dirname(__FILE__) . '/');

// Include database connection configuration
require ADMIN_DONATIONS_DOWNLOAD_BASE_PATH.'../../assets/scripts/dbconnect.php';

function fetchDonations($pdo, $fromDate, $toDate) {
    $query = "SELECT id, name, amount, donation_time, campaign_name FROM donations WHERE donation_time BETWEEN :fromDate AND :toDate";
    $statement = $pdo->prepare($query);
    $statement->bindParam(':fromDate', $fromDate);
    $statement->bindParam(':toDate', $toDate);
    $statement->execute();
    return $statement->fetchAll(PDO::FETCH_ASSOC);
}

try {
    $pdo = new PDO("mysql:host=$host;dbname=$database", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['submit'])) {
        $fromDate = $_POST['from_date'];
        $toDate = new DateTime($_POST['to_date']);
        $toDate->modify('+1 day');
        $toDate = $toDate->format('Y-m-d');
        
        if ($fromDate > $toDate) {
            $_SESSION['error'] = "Error: From Date cannot be greater than To Date.";
            session_write_close();
            // Redirect back to the form
            header('Location: http://localhost/nectarofservice/admin/admin_panel.php');
            exit();
        } else {
            $donations = fetchDonations($pdo, $fromDate, $toDate);
            header('Content-Type: text/csv');
            header("Content-Disposition: attachment; filename=$fromDate - $toDate donations.csv");
            $output = fopen('php://output', 'w');
            fputcsv($output, array('Donation ID', 'Name', 'Amount', 'Donation Time', 'Campaign Name'));
            foreach ($donations as $donation) {
                fputcsv($output, $donation);
            }
            fclose($output);
            exit();
        }
    }
} catch (PDOException $e) {
    error_log("Database error: " . $e->getMessage());
    die("An error occurred. Please try again later.");
}
?>