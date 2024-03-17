<?php
// if session is not started previously then start the session
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
include 'dbconnect.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $campaign_id = $_POST['campaign_id'];
    $amount = $_POST['amount'];
    $donor_name = $_POST['donor_name'];
    $email = $_POST['email']; // Add email from the form
    $phone_number = $_POST['phone_number']; // Add phone number from the form

    if ($amount <= 0) {
        echo "Please enter a valid amount greater than zero.";
    } else {
        // Fetch campaign name based on campaign_id
        $sql_campaign = "SELECT title FROM fundraising_campaigns WHERE id = $campaign_id";
        $result_campaign = $conn->query($sql_campaign);

        if ($result_campaign->num_rows > 0) {
            $row_campaign = $result_campaign->fetch_assoc();
            $campaign_name = $row_campaign['title'];

            // Update fundraising_campaigns table
            $sql_update = "UPDATE fundraising_campaigns SET current_amount = current_amount + $amount WHERE id = $campaign_id";

            // Insert donation into donations table with campaign name, email, and phone number
            $sql_insert = "INSERT INTO donations (name, email, phone_number, amount, campaign_id, campaign_name) VALUES ('$donor_name', '$email', '$phone_number', $amount, $campaign_id, '$campaign_name')";
            // Execute both queries within a transaction
            $conn->begin_transaction();
            $update_result = $conn->query($sql_update);
            $insert_result = $conn->query($sql_insert);
            $last_id = mysqli_insert_id($conn);


            if ($update_result === TRUE && $insert_result === TRUE) {
                // Commit transaction if both queries are successful
                $conn->commit();

                 // Set SMTP settings dynamically
                    ini_set("SMTP", "127.0.0.1");
                    ini_set("smtp_port", "1025");

                    $to = $email;
                    $subject = "Thank you for your contribution";
                    $body = "Dear $donor_name,\n\nThank you for your contribution of ₹ $amount/- to the $campaign_name campaign. Your support is greatly appreciated.\n\nSincerely,\nNectar of Service Team";
                      
                    $headers = "From: NectarOfService@gmail.com\r\n";
                    $headers .= "Return-Path: NectarOfService@gmail.com\r\n";
                    // Send email to donor
                    mail($to, $subject, $body, $headers);
                    
                // session variable to sent name, amount, receipt number and date to the next page
                $_SESSION['chi_donor_name'] = $donor_name;
                $_SESSION['chi_amount'] = $amount;
                $_SESSION['chi_receipt_number'] = "R-0".$campaign_id."-0".$last_id;
                $_SESSION['chi_date'] = date("Y-m-d");
                $_SESSION['chi_campaign_name'] = $campaign_name;
                
                header("Location: http://localhost/nectarofservice/fundraiser/thank_you_donation.php");
                exit;
            } else {
                // Rollback transaction and display error if any query fails
                $conn->rollback();
                echo "Error: " . $conn->error;
            }
        } else {
            echo "Campaign not found.";
        }
    }
}
$conn->close();
?>
