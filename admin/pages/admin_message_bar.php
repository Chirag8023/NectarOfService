<div class="admin_message_bar">
        <img src="http://localhost/nectarofservice/assets/images/notification-icon.svg">
        <?php
            if (isset($_SESSION['chi_error'])) {
                echo '<div style="color:#ff0037; font-weight:600;">' . $_SESSION['chi_error'] . '</div>';
                unset($_SESSION['chi_error']);
            }
            if (isset($_SESSION['chi_success'])) {
                echo '<div style="color:green; font-weight:600;">' . $_SESSION['chi_success'] . '</div>';
                unset($_SESSION['chi_success']);
            }
        ?>
</div>