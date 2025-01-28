<?php
session_start();

$servername = "localhost";
$username = "root";  // Default for XAMPP
$password = "";      // Default for XAMPP, but use your password if set
$dbname = "digital_leap";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $course_name = $conn->real_escape_string($_POST['course_name'] ?? '');
    $about_course = $conn->real_escape_string($_POST['about_course'] ?? '');
    $career_opportunities = $conn->real_escape_string($_POST['career_opportunities'] ?? '');
    $additional_info = $conn->real_escape_string($_POST['additional_info'] ?? '');

    // Handle file upload
    $target_dir = "uploads/";
    $target_file = $target_dir . basename($_FILES["course_image"]["name"]);
    $uploadOk = 1;
    $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

    // Check if image file is a actual image or fake image
    $check = getimagesize($_FILES["course_image"]["tmp_name"]);
    if($check !== false) {
        $uploadOk = 1;
    } else {
        echo "File is not an image.";
        $uploadOk = 0;
    }

    // Check file size
    if ($_FILES["course_image"]["size"] > 500000) {
        echo "Sorry, your file is too large.";
        $uploadOk = 0;
    }

    // Allow certain file formats
    if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" 
    && $imageFileType != "gif" ) {
        echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
        $uploadOk = 0;
    }

    // Check if $uploadOk is set to 0 by an error
    if ($uploadOk == 0) {
        echo "Sorry, your file was not uploaded.";
    // if everything is ok, try to upload file
    } else {
        if (move_uploaded_file($_FILES["course_image"]["tmp_name"], $target_file)) {
            $course_image = $target_file;

            // SQL to insert data into the courses table
            $sql = "INSERT INTO courses (course_name, course_image, about_course, career_opportunities, additional_info) VALUES (?, ?, ?, ?, ?)";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("sssss", $course_name, $course_image, $about_course, $career_opportunities, $additional_info);
            
            if ($stmt->execute()) {
                echo "<script>alert('Course uploaded successfully!'); window.location.href='courses.php';</script>";
            } else {
                echo "Error: " . $stmt->error;
            }
        } else {
            echo "Sorry, there was an error uploading your file.";
        }
    }
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upload Course - Digital Leap</title>
    <link rel="stylesheet" href="courses_display.css"> <!-- Assuming you have this CSS file -->
</head>
<body>
    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post" enctype="multipart/form-data">
        <label for="course_name">Course Name:</label>
        <input type="text" id="course_name" name="course_name" required><br><br>

        <label for="course_image">Course Image:</label>
        <input type="file" id="course_image" name="course_image" accept="image/*" required><br><br>

        <label for="about_course">About the Course:</label>
        <textarea id="about_course" name="about_course" required></textarea><br><br>

        <label for="career_opportunities">Career Opportunities:</label>
        <textarea id="career_opportunities" name="career_opportunities" required></textarea><br><br>

        <label for="additional_info">Additional Information:</label>
        <textarea id="additional_info" name="additional_info"></textarea><br><br>

        <input type="submit" value="Upload Course">
    </form>
</body>
</html>