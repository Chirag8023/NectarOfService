<link rel="stylesheet" href="http://localhost/nectarofservice/admin/admin_style.css">

<div class="status-indicator">
    <div>
        <span>Mail Server</span>
        <div class="indicator" id="mailHogIndicator"></div>
    </div>
    <div>
        <span>Website</span>
        <div class="indicator" id="indexPhpIndicator"></div>
    </div>
    <div>
        <span>Database</span>
        <div class="indicator" id="databaseIndicator"></div>
    </div>
</div>
<script>
        // Function to fetch server status and update indicators
        function fetchAndUpdateStatus() {
            fetch('http://localhost/nectarofservice/admin/status_checker/status.php')
                .then(response => response.json())
                .then(data => {
                    updateStatus('mailHog', data.mailHogStatus);
                    updateStatus('indexPhp', data.indexPhpStatus);
                    updateStatus('database', data.databaseStatus);
                })
                .catch(error => console.error('Error fetching server status:', error));
        }

        // Function to update status indicators
        function updateStatus(service, status) {
            const indicator = document.getElementById(service + 'Indicator');
            indicator.classList.remove('green', 'red'); // Remove previous classes
            indicator.classList.add(status ? 'green' : 'red');
        }

        // Call the fetchAndUpdateStatus function every 5 seconds
        setInterval(fetchAndUpdateStatus, 5000); // 5000 milliseconds = 5 seconds
        fetchAndUpdateStatus(); // Initial call to fetch and update status
</script>
