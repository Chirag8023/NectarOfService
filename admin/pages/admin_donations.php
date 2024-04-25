<?php
define('ADMIN_DONATIONS_BASE_PATH', dirname(__FILE__) . '/');
include ADMIN_DONATIONS_BASE_PATH . '../../assets/scripts/auth_check.php';
include ADMIN_DONATIONS_BASE_PATH . '../../assets/scripts/dbconnect.php';

function fetchDonations($pdo, $fromDate, $toDate) {
    // Query for fetch donations within the date range
    $query = "SELECT id, name, amount, donation_time, campaign_name FROM donations WHERE donation_time BETWEEN :fromDate AND :toDate";
    $statement = $pdo->prepare($query);
    $statement->bindParam(':fromDate', $fromDate);
    $statement->bindParam(':toDate', $toDate);
    $statement->execute();
    return $statement->fetchAll(PDO::FETCH_ASSOC);
}

try {
    // Establishing PDO connection
    $pdo = new PDO("mysql:host=$host;dbname=$database", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $error = '';
    if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['from_date']) && isset($_POST['to_date'])) {
        $fromDate = $_POST['from_date'];
        // Creating DateTime object from $toDate and add one day to include that day too
        $toDate = new DateTime($_POST['to_date']);
        $toDate->modify('+1 day');
        $toDate = $toDate->format('Y-m-d');
        
        if ($fromDate > $toDate) {
            $_SESSION['chi_error'] = "\"Start Date\" must be before the \"End Date\".";
            header("Location: " . $_SERVER["PHP_SELF"]);
            exit();
        } else {

        // Fetching donations
        $donations = fetchDonations($pdo, $fromDate, $toDate);

        // headers for CSV file download
        header('Content-Type: text/csv');
        header("Content-Disposition: attachment; filename=$fromDate - $toDate donations.csv");
        
        // A file pointer connected to the output stream
        $output = fopen('php://output', 'w');
        
        // the CSV headers
        fputcsv($output, array('Donation ID', 'Name', 'Amount', 'Donation Time', 'Campaign Name'));

        // Looping through donations and writing each row to the CSV file
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

<title>Admin Donations</title>
<link rel="stylesheet" href="http://localhost/nectarofservice/admin/admin_style.css">

<body class="main-body">

    <?php include ADMIN_DONATIONS_BASE_PATH . 'admin_header.php'; ?>

    <main class="main-content" style="width:100vw; border-left:4px solid #000;max-height:80vh;">
        <a href="http://localhost/nectarofservice/admin/admin_main.php" style="position:absolute; color:#000; font-size:1.2rem; text-decoration:none; border-bottom:2px solid black;"> « Back</a>
        <h1 style="margin: 0rem 0 1rem 0;">Download Records</h1>
        <p style="text-align:center;">Select the date range to download donation records.</p><br>
        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post" class="admin-panel-forms">
            <label for="from_date">Start Date:</label>
            <input type="date" id="from_date" name="from_date" required><br><br>
            <label for="to_date">End Date:</label>
            <input type="date" id="to_date" name="to_date" required><br><br>
            <button type="submit" name="submit">Generate CSV</button>
        </form>
    </main>

    <?php include ADMIN_DONATIONS_BASE_PATH .'admin_message_bar.php';?>
    
</body>