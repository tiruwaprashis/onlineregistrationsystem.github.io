<?php
include "connect.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Process form data
    $fullName = $_POST["fullName"];
    $dob = $_POST["dob"];
    $gender = $_POST["gender"];
    $country = $_POST["country"];
    $reason = $_POST["reason"];
    
    // Use prepared statements to avoid SQL injection
    $stmt = $conn->prepare("INSERT INTO migration (full_name, dob, gender, country, reason) VALUES (?, ?, ?, ?, ?)");
    if ($stmt === false) {
        die('Error preparing statement: ' . $conn->error);
    }

    $stmt->bind_param("sssss", $fullName, $dob, $gender, $country, $reason);
    if ($stmt === false) {
        die('Error binding parameters: ' . $stmt->error);
    }

    // Execute the statement
    $result = $stmt->execute();
    if ($result === false) {
        die('Error executing statement: ' . $stmt->error);
    }

    // Close the statement
    $stmt->close();

    // Perform further processing or store data in the database
    
    // Redirect to a success page or perform any other desired action
    header("Location: success_page.php");
    exit();
}

// Close the database connection at the end of your script
$conn->close();
?>
