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

if (isset($_GET['course_id'])) {
    $course_id = $conn->real_escape_string($_GET['course_id']);
    $sql = "SELECT * FROM courses WHERE id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $course_id);
    $stmt->execute();
    $result = $stmt->get_result();
    $course = $result->fetch_assoc();
} else {
    header("Location: courses.php");
    exit();
}


if ($course === null) {
    echo "No course found with this ID.";
    exit;
}

// Function to clean and format text
function cleanText($text) {
    $text = preg_replace("/\r\n|\r|\n/", "<br>", $text);
    $text = str_replace("\\r", "", $text);
    $text = str_replace("\\n", "", $text);
    $text = htmlspecialchars($text, ENT_QUOTES, 'UTF-8');
    $text = stripslashes($text);
    return $text;
}

$course['about_course'] = cleanText($course['about_course']);
$course['career_opportunities'] = cleanText($course['career_opportunities']);
$course['additional_info'] = cleanText($course['additional_info']);


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo htmlspecialchars($course['course_name']); ?> - Digital Leap</title>
    <link rel="stylesheet" href="courses_display.css">
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap" rel="stylesheet">


</head>
<body>
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
        </div>
    </div>
    <!-- Spinner End -->


    <div class="container mt-3">
        <a href="courses.php" class="btn btn-primary return-to-courses">Return to Courses</a>
    </div>


        <div class="course-detail">
            <img src="<?php echo htmlspecialchars($course['course_image']); ?>" alt="<?php echo htmlspecialchars($course['course_name']); ?>">
            <h1><?php echo htmlspecialchars($course['course_name']); ?></h1>
            <div class="about-course">
                <h2>About the Course</h2>
                <p><?php echo $course['about_course']; ?></p>
            </div>
            <div class="career-opportunities">
                <h2>Career Opportunities</h2>
                <p><?php echo $course['career_opportunities']; ?></p>
            </div>
            <div class="additional-info">
                <h2>Additional Information</h2>
                <p><?php echo $course['additional_info']; ?></p>
            </div>
        </div>



    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="wow.min.js"></script>
    <script src="easing.min.js"></script>
    <script src="waypoints.min.js"></script>
    <script src="owl.carousel.min.js"></script>

    <script src="courses_display.js"></script>
</body>
</html>