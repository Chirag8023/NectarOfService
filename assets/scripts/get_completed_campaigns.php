<?php
include 'dbconnect.php';

$completedCampaigns = "SELECT * FROM fundraising_campaigns WHERE current_amount >= goal ORDER BY id DESC LIMIT 3";
$completedResult = $conn->query($completedCampaigns);

$completedCampaignData = [];

if ($completedResult->num_rows > 0) {
    while($row = $completedResult->fetch_assoc()) {
        // Storing campaign data in an array
        $campaign = [
            'title' => $row["title"],
            'description' => strlen($row['description']) > 200 ? substr($row['description'], 0, 200) . '...' : $row['description'],
            'image_path' => '../assets/images/' . $row['image_filename'],
            'current_amount' => $row["current_amount"]
        ];
        $completedCampaignData[] = $campaign;
    }
} else {
    $completedCampaignData = []; // Empty array if no completed campaigns found
}
?>

<?php foreach ($completedCampaignData as $campaign): ?>
<div class="fundraiser-donation-data" style="display: flex;">
    <?php if (file_exists($campaign['image_path'])): ?>
    <div class="image-container" style="flex: 30%; height:12rem;">
        <img src="<?php echo $campaign['image_path']; ?>"
            style="object-fit: cover; width: 100%; max-height: 100%; height: auto; border-top-left-radius: 1px; border-bottom-left-radius: 1px; border-right: 2px solid black; margin-left: -1rem; margin-bottom: -1rem;"
            alt="Campaign Image">
    </div>
    <?php endif; ?>
    <div class="right-side-content-wrapper"
        style="flex: 70%; display: flex; flex-direction: column; justify-content: space-around; padding-left: 10px;">
        <div>
            <h3><?php echo $campaign["title"]; ?></h3>
            <p><?php echo $campaign["description"]; ?></p>
        </div>
        <div>
            <p>Total Amount Raised: ₹ <?php echo $campaign["current_amount"]; ?></p>
        </div>
    </div>
</div>
<?php endforeach; ?>

<?php if (empty($completedCampaignData)): ?>
<p>No completed campaigns found</p>
<?php endif; ?>