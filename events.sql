-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2016 at 08:27 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `events`
--
CREATE DATABASE events;
USE events;
----------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL PRIMARY KEY,
  `event_name` varchar(50) NOT NULL,
  `event_address` varchar(100) NOT NULL,
  `event_date` datetime NOT NULL,
  `event_free` tinyint(1) NOT NULL DEFAULT '1',
  `event_category` varchar(50) DEFAULT NULL,
  `event_status` tinyint(1) NOT NULL DEFAULT '1',
  `event_description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_name`, `event_address`, `event_date`, `event_free`, `event_category`, `event_status`, `event_description`) VALUES
(1, 'Hack Homlessness Hackathon', 'The Tech Museum of Innovation, San Jose', '2016-09-24 00:00:00', 1, 'Charity & Causes', 1, 'The Hack Homelessness Hackathon is an event open to all ages. Over the course of a weekend, you''ll be immersed in the problems facing the homeless in the Bay Area and inspired to come up with creative solutions to those problems. There will be presentations from non-profits with decades of experience and expertise, as well as involvement from formerly homeless individuals.'),
(2, 'Crawloween: Halloween Pub Crawl', '1233 Polk Street, San Francisco, CA 94109', '2016-10-24 00:00:00', 1, 'Entertainment', 1, 'The San Francisco Halloween Pub Crawl is back and it’s bigger than ever! Last year, over 2500 costumed crawlers took over Polk Street for $3 drinks, music, dancing, costume contests more! Think of it as Trick ‘r Treating….for adults. This year, we are expecting well over 2,500 participants for the biggest pub crawl in the city!'),
(3, 'therapy: you''re good enough', 'Breather Room - 55 New Montgomery St, San Francisco, CA 94105', '2016-09-17 10:30:00', 0, 'Health', 1, 'we''re going to be talking about feeling like we always have to do more, more, more for our jobs, about keeping up with everyone else, and about learning to do what makes us happy instead of doing passion projects to make employers happy'),
(4, 'MIDNIGHT CRUISE | October Bash', 'Pier 40 San Francisco - 40 Pier, San Francisco, CA 94107', '2016-10-01 12:00:00', 1, 'Entertainment', 1, '2016 Party Cruise Series, aboard Fume Blanc with World Class House Music & Open Format DJs'),
(5, 'The Beerwalk - Willow Glen', 'Willow Glen - San Jose, CA 95125', '2016-10-29 15:00:00', 0, 'Food & Drinks', 1, 'Stroll Lincoln Avenue in Downtown Willow Glen and discover all the shops, art galleries, and great restaurants. All while sipping on great beers and enjoying the social enthusiasm of shopkeepers and beer lovers, alike.'),
(6, 'Dinner, Movie Under the Stars & Fundraiser', 'Glendale, CA', '2016-09-24 17:00:00', 1, 'Charity', 1, 'Come meet new friends and form new relationships. Take a break from your busy life; you deserve a little treat here and there. ;)'),
(7, 'San Francisco Fringe Festival Opening Party', '1700 E Bayshore Rd, East Palo Alto, CA 94303', '2016-09-30 09:00:00', 1, 'Entertainment', 1, 'Things are kicking off at PianoFight''s opening night party for SF''s beloved annual Fringe Festival, now celebrating its 25th year!'),
(8, 'TRAVISWILD''s Animal Birthday!', '811 E Arques Ave, Sunnyvale, CA 94085', '2016-09-21 18:00:00', 0, 'Entertainment', 1, 'DJ TRAVISWILD has shared the stage with A-Trak, Thomas Jack, Chromeo, Viceroy, and more, AND he''s celebrating his birthday in SF ft. sets by Deep Moisture and his fans The Animal Kingdom.'),
(9, 'WasTED Talks', '3255 Mission College Blvd', '2016-10-13 21:00:00', 0, 'Health', 1, 'Just like TED Talks, except the speakers are WASTED.'),
(10, 'Evam StandUP Tamasha', 'Trianon Threatre , San jose , CA', '2016-09-01 18:30:00', 0, 'Entertainment', 1, 'The Comedians come on stage and split you up to laughter with their instant critisizms, jokes and content. Come, laugh and enjoy the evening.'),
(11, 'Grady Booch Talk on Futute of Computers', 'Computer History Museum, Mountain view, CA', '2016-11-17 10:30:00', 1, 'Technology', 1, 'Grady Booch, Co Founder of UML languague and rational rose software gives a intersting speech on History of computers and the future advancements we can look forward to.'),
(12, 'San Diego Padres at San Francisco Giants', 'AT&T Park - San Francisco, CA', '2016-09-13 11:00:00', 0, 'Sports', 1, 'The San Diego Padres meet the San Fransisco Giants in the nail biting final match happening in Bay area. Come and Enjoy the Action!'),
(13, 'Underwater Rugby Practice in Mountain View', 'Eagle pool, Franklin Street, Mountain View, CA', '2016-12-20 16:00:00', 1, 'Sports', 1, 'Play underwater rugby in San Francisco! Two baskets at the bottom of the pool, one ball, three dimensions to move in and six players between your team and the goal. Underwater rugby is a fast paced team sport where players jostle underwater to score a goal at the bottom of the pool.'),
(14, 'Apache Spark & Scala Certification Training', 'Garcia Avenue, Palo Alto, CA', '2016-10-13 16:30:00', 0, 'Technology', 1, 'BOLD(Bay Area Organisation of Ladies in Big Data) is conducting intensive training in Spark and Scals.This promises to be an extremely enriching session and we hope you can make it.'),
(15, 'Going beyond Gaming : Virtual Reality', 'Linden Lab, San Francisco, CA', '2016-09-20 09:00:00', 1, 'Technology', 1, 'This discussion event is for those interested in exploring the potential of VR. The event will explore how virtual reality is transforming storytelling, medicine, education, design, and everything in between.'),
(16, 'Bay trail Tuesday morning run', 'Willow Glen Creek Trail, Los Gatos, CA', '2016-10-01 07:00:00', 1, 'Health', 1, 'Early morning start for folks who want to get their run in before work.Jump start your day with some dedicated and friendly runners!We will start at the parking lot of Blackford Elementary School and get on the Los Gatos Creek trail running to Campbell towards Los Gatos.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
