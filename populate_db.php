<?php

// Database connection settings
$host = 'localhost';
$dbname = 'mydb';
$username = 'root';
$password = '';

try {
    // Connect to the database
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Prepare the SQL query to update the table
    $stmt = $pdo->prepare("UPDATE donations SET name = :name, email = :email, phone_number = :phone WHERE id = :id");

    // Predefined arrays of Indian names
    $names = array('Rahul Sharma', 'Priya Patel', 'Suresh Kumar', 'Anita Gupta', 'Amit Singh', 'Deepika Sharma', 'Ajay Yadav', 'Pooja Shah', 'Manoj Kumar', 'Kavita Verma');
	
	// change the rumber with total rows in "donations" table
    for ($i = 1; $i <= 172; $i++) {
        // Generate random Indian name, email, and phone number
        $name = $names[array_rand($names)]; // Select random name from the predefined list
        $email = strtolower(str_replace(' ', '.', $name)) . '@example.com'; // Generate email based on name
        $phone = '91' . mt_rand(6000000000, 9999999999); // Generate random Indian phone number

        // Bind parameters and execute the query
        $stmt->bindParam(':name', $name);
        $stmt->bindParam(':email', $email);
        $stmt->bindParam(':phone', $phone);
        $stmt->bindParam(':id', $i);
        $stmt->execute();
    }

    echo "Data updated successfully!";
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}
?>