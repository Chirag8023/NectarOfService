<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dummy Credit Card Interface</title>
<style>
  body {
    background-color: #0070ba; /* PayPal blue */
    font-family: monospace; /* PayPal uses Arial */
    color: #fff; /* White text */
  }
  h2 {
    text-align: center;
    margin-top: 2.5rem;
    font-size: 2rem;
  }
  .items {
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    height: 80vh;
  }
  #logo {
    position: absolute;
    top: -3.5rem;
    left: 0;
    width: 13%;
    height: auto;
    filter:invert();
  }
  @media (max-width: 1000px) {
    #logo {
      top: -2rem;
    }
  }
  @media (max-width: 700px) {
    #logo {
      top: -1rem;
    }
  }
  .trademark {
    position: absolute;
    bottom: 0;
    right: 0;
    padding: 1rem;
    color: #fff; /* White text */
  }

  form {
  display: flex;
  flex-direction: column;
  width: 300px; /* Increase width to accommodate new fields */
  background-color: #fff;
  color: #000;
  padding: 20px;
  border-radius: 5px;
}

input, select, textarea {
  margin-bottom: 10px;
  padding: 5px; /* Add some padding */
  border: 1px solid #ccc; /* Add a border */
  border-radius: 3px; /* Add some border radius */
}

input[type="submit"] {
  background-color: #0070ba;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type="submit"]:hover {
  background-color: #005a93;
}
</style>
</head>
<body>
<img id="logo"  src="http://localhost/nectarofservice/assets/images/paypal logo.png" alt="Paypal Logo">
<h2>Dummy Paypal</h2>
<div class="items">

<!-- Dummy PayPal form -->
<form id="paypalForm" onsubmit="processPayment(); return false;">
  <h1>ammount:  ₹<?php echo $_GET['pay']; ?>/-</h1><br>
  <label for="emailOrMobile">Email or Mobile Number:</label>
  <input type="text" id="emailOrMobile" required><br>
  <label for="password">Password:</label>
  <input type="password" id="password" required><br>
  <label for="description">Description or Note:</label>
  <textarea id="description" rows="4" cols="50" style="resize: none;"></textarea><br>
  <input type="submit" value="Process Payment">
</form>
</div>
<div class="trademark" style="text-align: right;">
<p>© 2024 Dummy Paypal by Chirag Arora.</p>
</div>
<script>
function processPayment() {
  // Simulate credit card processing
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
</body>
</html>