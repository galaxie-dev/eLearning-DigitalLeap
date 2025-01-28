-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2025 at 09:00 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digital_leap`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `submit_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `subject`, `message`, `submit_date`) VALUES
(1, 'Michael Kingstone', '', 'laskCNMTURDASKD', 'dfcyfyvycsyc', '2025-01-21 12:04:46'),
(2, 'Wes Brown', '', 'Build me a website', 'yess, i need a website', '2025-01-21 12:08:49'),
(3, 'Joshua ', '', 'new querry', 'drxrxr', '2025-01-22 07:53:35');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `course_image` varchar(255) NOT NULL,
  `about_course` text DEFAULT NULL,
  `career_opportunities` text DEFAULT NULL,
  `additional_info` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `course_image`, `about_course`, `career_opportunities`, `additional_info`) VALUES
(1, 'Web Design', 'uploads/course-1.jpg', 'Web Development Course: Learn to build websites from scratch! Dive into HTML, CSS, JavaScript, and more to create engaging, user-friendly web experiences.', 'Web Developer: General term for professionals who build websites, ranging from simple static sites to complex web applications.\\r\\nFrontend Developer: Specializes in the visual and interactive elements of websites, working with HTML, CSS, and JavaScript.\\r\\nBackend Developer: Focuses on server-side logic, databases, and application integration, often using languages like PHP, Python, Ruby, or Node.js.\\r\\nFull Stack Developer: Capable of working on both frontend and backend, offering a complete solution from the user interface to server-side programming.\\r\\nUI/UX Designer: Concentrates on the design aspects, ensuring websites are visually appealing and easy to use, though this might overlap with development skills in some contexts.', 'n/a'),
(2, 'Graphic Design', 'uploads/1934823-e1540532501723.jpg', '\\r\\nGraphic design is the art and practice of creating visual content to communicate messages. It involves using typography, imagery, color, and layout to solve problems or convey ideas.', '\\r\\nHere are some career opportunities in graphic design:\\r\\n\\r\\nGraphic Designer\\r\\nUI/UX Designer\\r\\nBrand Identity Designer\\r\\nWeb Designer\\r\\nPrint Designer\\r\\nMotion Graphics Designer\\r\\nAdvertising Designer\\r\\nEditorial Designer\\r\\nPackaging Designer\\r\\nFreelance Graphic Designer', 'Software Proficiency: Graphic designers must be skilled in design software like Adobe Creative Suite (Photoshop, Illustrator, InDesign), Sketch, CorelDRAW, or Figma. Keeping up with software updates and new tools is crucial.\\r\\nTrends and Styles: The field is highly influenced by current design trends, so designers need to stay informed about the latest in color theory, typography, layout, and design styles to keep their work current and appealing.\\r\\nCommunication Skills: Beyond visual creation, graphic design involves a lot of communication, from understanding client briefs to presenting ideas. Effective communication ensures the design meets the intended purpose.\\r\\nCollaboration: Designers often work with teams including other designers, marketers, copywriters, and developers, especially in larger projects or agencies. Being collaborative and able to integrate feedback is key.\\r\\nProblem Solving: At its core, graphic design is about solving visual communication problems. This requires creativity, critical thinking, and sometimes, a deep understanding of the audience or market.'),
(3, 'Video Editing', 'uploads/cat-3.jpg', '\\r\\nVideo editing is the process of manipulating and rearranging video shots to create a new work, involving cutting, arranging, and enhancing footage to tell a story or convey a message effectively.', '\\r\\nHere are the possible career opportunities in video editing:\\r\\n\\r\\nVideo Editor\\r\\nPost-Production Editor\\r\\nFilm Editor\\r\\nTV Editor\\r\\nCommercials Editor\\r\\nDocumentary Editor\\r\\nMotion Graphics Editor\\r\\nFreelance Video Editor\\r\\nVideo Content Creator\\r\\nSocial Media Video Editor', 'Software Proficiency: Editors need to be adept with video editing software like Adobe Premiere Pro, Final Cut Pro, Avid Media Composer, DaVinci Resolve, or After Effects for motion graphics. Staying updated with software advancements is key.\\r\\nStorytelling Skills: Video editing is fundamentally about storytelling. An editor must understand how to pace a narrative, build tension, and use cuts to convey emotion or information.\\r\\nColor Grading: Knowledge of color correction and grading can significantly impact the mood and professionalism of a video. Editors often learn to use tools like DaVinci Resolve for this purpose.\\r\\nAudio Editing: Good video editing includes sound design, mixing, and ensuring audio syncs well with visuals. Skills in audio editing software like Adobe Audition can be crucial.\\r\\nCollaboration: Editors work closely with directors, cinematographers, sound designers, and sometimes clients. Effective communication and the ability to take and implement feedback are essential.\\r\\nCreative Problem Solving: Often, editors must find creative solutions to technical or narrative problems, like fixing continuity errors or enhancing a scene\\\'s impact with limited footage.\\r\\nTime Management: Deadlines are common in editing. Managing time efficiently, especially on longer projects, is a critical skill.'),
(4, 'Online Marketing', 'uploads/7_digital_skills600x387.png', '\\r\\nOnline marketing involves promoting products, services, or brands using digital channels like websites, social media, search engines, email, and mobile apps to reach and engage consumers.', '\\r\\nHere are some areas you can get employed in online marketing:\\r\\n\\r\\n- Digital Marketing Specialist\\r\\n- SEO Specialist\\r\\n- PPC (Pay-Per-Click) Specialist\\r\\n- Content Marketer\\r\\n- Social Media Manager\\r\\n- Email Marketing Specialist\\r\\n- Affiliate Marketing Manager\\r\\n- Web Analyst\\r\\n- E-commerce Marketing Specialist\\r\\n- Digital Marketing Strategist', '\\r\\nData-Driven: Online marketing heavily relies on data analytics to measure performance, understand consumer behavior, and optimize campaigns. Tools like Google Analytics, SEMrush, or HubSpot are commonly used.\\r\\nSEO and Content: Search Engine Optimization (SEO) is crucial for improving organic (non-paid) visibility on search engines. This includes keyword research, on-page optimization, and creating valuable content that aligns with user intent.\\r\\nPay-Per-Click (PPC) Advertising: Platforms like Google Ads and Bing Ads allow businesses to pay for traffic. Understanding how to craft effective ad campaigns, manage budgets, and analyze conversion rates is key.\\r\\nSocial Media Marketing: Beyond posting, it involves strategic content creation, community management, influencer partnerships, and using social media analytics to drive engagement and conversions.\\r\\nEmail Marketing: Still one of the most effective tools, it involves building and segmenting email lists, crafting compelling email campaigns, and analyzing engagement metrics to refine strategies.\\r\\nContent Marketing: Focuses on creating and distributing valuable, relevant, and consistent content to attract and retain a clearly defined audience, ultimately driving profitable customer action.\\r\\nMobile Marketing: Given the ubiquity of smartphones, optimizing for mobile is essential, including mobile SEO, app marketing, and SMS marketing.');

-- --------------------------------------------------------

--
-- Table structure for table `join_us`
--

CREATE TABLE `join_us` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `program` varchar(50) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `join_us`
--

INSERT INTO `join_us` (`id`, `name`, `email`, `phone`, `age`, `gender`, `program`, `reg_date`) VALUES
(1, 'Evans', 'osumbaevans@gmail.com', '+254707868194', 22, 'male', 'web_design', '2025-01-17 08:03:46'),
(2, 'Michael Kingstone', 'michaelkingstone@gmail.com', '+254740404040', 29, 'male', 'online_marketing', '2025-01-17 08:08:12'),
(3, 'Marion Shee', 'marionshee@gmail.com', '+254709443829', 29, '', 'Graphic Design', '2025-01-17 08:12:21'),
(4, 'Joshua ', 'joshua@gmail.com', '+254707868194', 44, 'male', 'Online Marketing', '2025-01-22 07:51:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `join_us`
--
ALTER TABLE `join_us`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `join_us`
--
ALTER TABLE `join_us`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
