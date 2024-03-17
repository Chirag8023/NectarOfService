<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dummy UPI Interface</title>
<style>
body {
  font-family: Arial, sans-serif;
  background-color: #f4f4f4;
  margin: 0;
  padding: 0;
}

.container {
  width: 100%;
  margin: auto;

}

.container form {
  display: flex;
  flex-direction: column;
  padding: 3% 30%;
  margin: auto;
}


header {
  background-color: #333;
  color: #fff;
  padding: 10px 0;
  text-align: center;
}


label, input {
  display: block;
  margin-bottom: 10px;
}

input[type="submit"] {
  background-color: #4CAF50;
  color: white;
  padding: 10px 20px;
  border: none;
  cursor: pointer;
}

input[type="submit"]:hover {
  background-color: #45a049;
}

footer {
  background-color: #333;
  color: #fff;
  text-align: center;
  padding: 10px 0;
  position: fixed;
  bottom: 0;
  width: 100%;
}
</style>
</head>
<body>
<header>
  <h1>Dummy UPI Interface</h1>
</header>

<div class="container">
  <!-- Dummy UPI payment form -->
  <form id="upiForm" onsubmit="processPayment(); return false;">
    <label for="upiId">UPI ID:</label>
    <input type="text" id="upiId" required><br>
    <label for="transactionAmount">Transaction Amount:</label>
    <input type="number" id="transactionAmount" value='<?php echo $_GET["pay"]; ?>' readonly><br>
    <label for="transactionNote">Transaction Note:</label>
    <input type="text" id="transactionNote"><br>
    <label for="upiPin">UPI PIN:</label>
    <input type="password" id="upiPin" required><br> <!-- Add UPI PIN field -->
    <input type="submit" value="Process Payment">
  </form>
</div>

<script>
function processPayment() {
  // Simulate UPI processing
  var success = Math.random() < 0.8; // 80% chance of success

  if (success) {
    // Send success message to main page
    window.opener.postMessage('payment_success', 'http://localhost/nectarofservice/fundraiser/donate.php');
    // Close the window
    window.close();
  } else {
    // Show payment failed try again msg on screen
    alert('Dummy Error Message: Payment failed. Please try again.');
  }
}

</script>

<footer>
  <p>&copy; 2024 Dummy UPI Interface by Chirag Arora.</p>
</footer>
</body>
</html>