<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
require('fpdf/fpdf.php');

// Generate the receipt PDF
generateReceipt($_SESSION['chi_donor_name'], $_SESSION['chi_date'], $_SESSION['chi_receipt_number'], $_SESSION['chi_amount']);


// Function to generate the receipt PDF
function generateReceipt($name, $date, $receiptNo, $amount) {
    $pdf = new FPDF();
    $pdf->AddPage('P', array(220, 200));

    $pdf->SetFont('Arial', 'B', 20);
    $pdf->SetTextColor(0);
    $pdf->Cell(0, 20, 'Donation Receipt', 0, 1, 'C');
    $pdf->Ln(10);

    $pdf->SetFont('Arial', '', 12);
    $pdf->Cell(0, 10, 'Date: ' . $date, 0, 1);
    $pdf->Cell(0, 10, 'Receipt Number: ' . $receiptNo, 0, 1);

    $pdf->Cell(0, 10, 'Name: ' . $name, 0, 1);
    $pdf->Cell(0, 10, 'Amount Donated: Rs ' . $amount . '/-', 0, 1);

    $pdf->SetFont('Arial', 'B', 12);
    $pdf->Cell(0, 10, 'Tax Information:', 0, 1);
    $pdf->SetFont('Arial', '', 12);
    $pdf->Cell(0, 10, 'This donation is eligible for deduction under Section 80D of the Income Tax Act.', 0, 1);

    $pdf->SetFont('Arial', 'B', 12);
    $pdf->Cell(0, 10, 'Impact of Your Donation:', 0, 1);
    $pdf->SetFont('Arial', '', 12);
    $pdf->Cell(0, 10, 'Your contribution will support our efforts to provide essential services and uplift communities', 0, 1);
    $pdf->Cell(0, 10, 'including but not limited to providing food assistance, educational opportunities,', 0, 1);
    $pdf->Cell(0, 10, 'and resources for those in need.', 0, 1);


    $pdf->SetFont('Arial', 'B', 18);
    $pdf->Cell(0, 20, 'Thank you for your support!', 0, 1, 'C');

    $pdf->SetFont('Arial', '', 12);
    $pdf->Cell(0, 10, 'Sincerely,', 0, 1, 'L');
    $pdf->Cell(0, 10, 'Vice Chairman', 0, 1, 'L');
    $pdf->Cell(0, 10, 'Nectar Of Service', 0, 1, 'L');

    // Output the PDF to the browser
    $pdf->Output('D', 'receipt.pdf');
}
?>
