<?php
include "dbconnect.php"; 

// total donations from fundraising_campaigns
$sql_total_donations = "SELECT SUM(current_amount) AS total_donations FROM fundraising_campaigns";
$result_total_donations = $conn->query($sql_total_donations);
$row_total_donations = $result_total_donations->fetch_assoc();
$total_donations = $row_total_donations['total_donations'];

// total campaigns from fundraising_campaigns
$sql_total_campaigns = "SELECT COUNT(*) AS total_campaigns FROM fundraising_campaigns";
$result_total_campaigns = $conn->query($sql_total_campaigns);
$row_total_campaigns = $result_total_campaigns->fetch_assoc();
$total_campaigns = $row_total_campaigns['total_campaigns'];

// total people donated from donations
$sql_total_donors = "SELECT COUNT(*) AS total_donors FROM donations";
$result_total_donors = $conn->query($sql_total_donors);
$row_total_donors = $result_total_donors->fetch_assoc();
$total_donors = $row_total_donors['total_donors'];

// total donation this month from donations
$current_month = date('Y-m');
$sql_total_donation_this_month = "SELECT SUM(amount) AS total_donation_this_month FROM donations WHERE MONTH(donation_time) = MONTH(NOW()) AND YEAR(donation_time) = YEAR(NOW())";
$result_total_donation_this_month = $conn->query($sql_total_donation_this_month);
$row_total_donation_this_month = $result_total_donation_this_month->fetch_assoc();
$total_donation_this_month = $row_total_donation_this_month['total_donation_this_month'];

// total fundraising campaigns this month from fundraising_campaigns
$sql_total_campaigns_this_month = "SELECT COUNT(*) AS total_campaigns_this_month FROM fundraising_campaigns WHERE MONTH(created_at) = MONTH(NOW()) AND YEAR(created_at) = YEAR(NOW())";
$result_total_campaigns_this_month = $conn->query($sql_total_campaigns_this_month);
$row_total_campaigns_this_month = $result_total_campaigns_this_month->fetch_assoc();
$total_campaigns_this_month = $row_total_campaigns_this_month['total_campaigns_this_month'];

// total people donated this month from donations
$sql_total_donors_this_month = "SELECT COUNT(*) AS total_donors_this_month FROM donations WHERE MONTH(donation_time) = MONTH(NOW()) AND YEAR(donation_time) = YEAR(NOW())";
$result_total_donors_this_month = $conn->query($sql_total_donors_this_month);
$row_total_donors_this_month = $result_total_donors_this_month->fetch_assoc();
$total_donors_this_month = $row_total_donors_this_month['total_donors_this_month'];

// Preparing the data to send as JSON
$data = array(
    'total_donations' => $total_donations,
    'total_campaigns' => $total_campaigns,
    'total_donors' => $total_donors,
    'total_donation_this_month' => $total_donation_this_month,
    'total_campaigns_this_month' => $total_campaigns_this_month,
    'total_donors_this_month' => $total_donors_this_month
);

// Output JSON response
header('Content-Type: application/json');
echo json_encode($data);

$conn->close();
?>
