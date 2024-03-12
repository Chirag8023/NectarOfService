<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
?>
<form action="http://localhost/nectarofservice/admin/scripts/generate_csv.php" method="post">
    <label for="from_date">From Date:</label>
    <input type="date" id="from_date" name="from_date" required>
    <label for="to_date">To Date:</label>
    <input type="date" id="to_date" name="to_date" required>
    <button type="submit" name="submit">Generate CSV</button>
    <?php if (isset($_SESSION['error'])) { ?>
    <p style="color:red"><?php echo $_SESSION['error']; unset($_SESSION['error']); ?></p>
    <?php } ?>
</form>