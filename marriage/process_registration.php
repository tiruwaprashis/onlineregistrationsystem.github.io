
<?php
include "connect.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Process husband details
    $husbandFullName = $_POST["husband_full_name"];
    $husbandDOB = $_POST["husband_dob"];
    $maritalStatusHusband = $_POST["marital_status_husband"];
    $religionHusband = $_POST["religion_husband"];
    $idTypeHusband = $_POST["id_type_husband"];
    $idNumberHusband = $_POST["id_number_husband"];

    // Process more details
    $fatherNameHusband = $_POST["father_name_husband"];
    $motherNameHusband = $_POST["mother_name_husband"];
    $permanentAddressHusband = $_POST["permanent_address_husband"];
    $wardNoHusband = $_POST["ward_no_husband"];
    $witnessNameHusband = $_POST["witness_name_husband"];
    $witnessAddressHusband = $_POST["witness_address_husband"];

    // Process wife details
    $wifeFullName = $_POST["wife_full_name"];
    $wifeDOB = $_POST["wife_dob"];
    $maritalStatusWife = $_POST["marital_status_wife"];
    $religionWife = $_POST["religion_wife"];
    $idTypeWife = $_POST["id_type_wife"];
    $idNumberWife = $_POST["id_number_wife"];

    // Process more details
    $fatherNameWife = $_POST["father_name_wife"];
    $motherNameWife = $_POST["mother_name_wife"];
    $permanentAddressWife = $_POST["permanent_address_wife"];
    $wardNoWife = $_POST["ward_no_wife"];
    $witnessNameWife = $_POST["witness_name_wife"];
    $witnessAddressWife = $_POST["witness_address_wife"];

    // Use prepared statements to avoid SQL injection
    $stmt = $conn->prepare("INSERT INTO husband_details (full_name, dob, marital_status, religion, id_type, id_number, father_name, mother_name, permanent_address, ward_no, witness_name, witness_address) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("sssssisssiss", $husbandFullName, $husbandDOB, $maritalStatusHusband, $religionHusband, $idTypeHusband, $idNumberHusband, $fatherNameHusband, $motherNameHusband, $permanentAddressHusband, $wardNoHusband, $witnessNameHusband, $witnessAddressHusband);

    // Execute the statement
    $stmt->execute();

    // Close the statement
    $stmt->close();

     // Use prepared statements to avoid SQL injection for wife_details
     $stmtWife = $conn->prepare("INSERT INTO wife_details (full_name, dob, marital_status, religion, id_type, id_number, father_name, mother_name, permanent_address, ward_no, witness_name, witness_address) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
     $stmtWife->bind_param("sssssisssiss", $wifeFullName, $wifeDOB, $maritalStatusWife, $religionWife, $idTypeWife, $idNumberWife, $fatherNameWife, $motherNameWife, $permanentAddressWife, $wardNoWife, $witnessNameWife, $witnessAddressWife);
 
     // Execute the wife statement
     $stmtWife->execute();
 
     // Close the wife statement
     $stmtWife->close();

    // Perform further processing or store data in the database
    
    // Redirect to a success page or perform any other desired action
    header("Location: success_page.php");
    exit();
}

// Close the database connection at the end of your script
$conn->close();
?>
