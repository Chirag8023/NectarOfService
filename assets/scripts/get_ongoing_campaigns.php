<?php
include 'dbconnect.php';

$ongoingCampaigns = "SELECT * FROM fundraising_campaigns WHERE current_amount < goal ORDER BY id DESC";
$ongoingResult = $conn->query($ongoingCampaigns);

$ongoingCampaignData = [];

if ($ongoingResult->num_rows > 0) {
    while($row = $ongoingResult->fetch_assoc()) {
        $percentage = ($row["current_amount"] / $row["goal"]) * 100;
        
        // Storing campaign data in an array
        $campaign = [
            'title' => $row["title"],
            'description' => strlen($row['description']) > 200 ? substr($row['description'], 0, 200) . '...' : $row['description'].'<br><br>',
            'goal' => $row["goal"],
            'current_amount' => $row["current_amount"],
            'percentage' => round($percentage, 2),
            'image_path' => '../assets/images/' . $row['image_filename'],
            'id' => $row['id']
        ];
        $ongoingCampaignData[] = $campaign;
    }
} else {
    $ongoingCampaignData = []; // Empty array if no ongoing campaigns found
}
?>

<?php foreach ($ongoingCampaignData as $campaign): ?>
<div class="fundraiser-donation-data" style="display: flex;">
    <?php if (file_exists($campaign['image_path'])): ?>
    <div class="image-container" style="flex: 30%; height:19rem;">
        <img src="<?php echo $campaign['image_path']; ?>"
            style="object-fit: cover;width:100%;height:100% !important; margin-left:-1rem;border:3px solid black;"
            alt="Campaign Image">
    </div>
    <?php endif; ?>
    <div class="right-side-content-wrapper" style="flex: 70%; padding-right:0.2rem;">
        <h3><?php echo $campaign["title"]; ?></h3>
        <p><?php echo $campaign["description"]; ?></p>
        <p>Goal: ₹ <?php echo $campaign["goal"]; ?></p>
        <p>Current Amount: ₹ <?php echo $campaign["current_amount"]; ?></p>
        <div class="progress">
            <div class="progress-bar" style="width: <?php echo min(100, $campaign['percentage']); ?>%;"></div>
            <div class="progress-text"><?php echo $campaign['percentage']; ?>%</div>
        </div>
        <?php if ($campaign['percentage'] >= 100): ?>
        <p>This campaign has ended.</p>
        <?php else: ?>
        <a href="http://localhost/nectarofservice/fundraiser/donate.php?campaign_id=<?php echo $campaign['id']; ?>"><button
                class="header-button" style="margin: 0.8rem 0 0.8rem 0;">Donate</button></a>
        <?php endif; ?>
    </div>
</div>
<?php endforeach; ?>

<?php if (empty($ongoingCampaignData)): ?>
<p>No ongoing campaigns found</p>
<?php endif; ?>