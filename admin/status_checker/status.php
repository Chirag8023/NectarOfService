<?php
// Function to check service status with a custom timeout
function serviceStatus($host, $port, $timeout) {
    $socket = @fsockopen($host, $port, $errno, $errstr, $timeout);
    if ($socket !== false) {
        fclose($socket);
        return true;
    }
    return false;
}

$mailHogStatus = serviceStatus('localhost', 8025, 1); // Timeout set to 1 second
$indexPhpStatus = serviceStatus('localhost', 80, 1); // Timeout set to 1 second
$databaseStatus = serviceStatus('localhost', 3306, 1); // Timeout set to 1 second

echo json_encode(['mailHogStatus' => $mailHogStatus, 'indexPhpStatus' => $indexPhpStatus, 'databaseStatus' => $databaseStatus]);
?>
