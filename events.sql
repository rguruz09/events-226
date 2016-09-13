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
(7, 'San Francisco Fringe Festival Opening Party', '1700 E Bayshore Rd, East Palo Alto, CA 94303', '2016-09-30 00:00:00', 1, 'Entertainment', 1, 'Things are kicking off at PianoFight''s opening night party for SF''s beloved annual Fringe Festival, now celebrating its 25th year!'),
(8, 'TRAVISWILD''s Animal Birthday!', '811 E Arques Ave, Sunnyvale, CA 94085\r\n', '2016-09-21 00:00:00', 0, 'Entertainment', 1, 'DJ TRAVISWILD has shared the stage with A-Trak, Thomas Jack, Chromeo, Viceroy, and more, AND he''s celebrating his birthday in SF ft. sets by Deep Moisture and his fans The Animal Kingdom.'),
(9, 'WasTED Talks', '3255 Mission College Blvd\r\n(408) 961-3599', '2016-10-13 00:00:00', 0, 'Health', 1, 'Just like TED Talks, except the speakers are WASTED.'),
(10, 'Mortified Oakland', '780 E El Camino Real\r\n(408) 738-9430', '2016-12-16 00:00:00', 0, 'Tech', 1, 'The New Parish\r\nMortified is a comedy show where grown-a** adults share their most embarrassing and real childhood letters, lyrics, journals, home movies, and artwork... in front of total strangers.'),
(11, 'teamLab: Living Digital Space and Future Parks', 'Pacific Rim Shopping Center\r\n20011 Bollinger Rd\r\n(408) 973-8402', '2016-10-26 00:00:00', 1, 'Tech', 1, 'Pace Art + Technology\r\nYour Instagram feed may already be filled with images from this place, but you should see this immersive, large-scale, site-specific installation—and digital playground for all ages—for yourself!'),
(12, '21st Annual Ghirardelli Chocolate Festival', '112 N Rengstorff Ave\r\n(650) 969-5784', '2016-11-16 00:00:00', 0, 'Food', 1, 'Ghirardelli Square\r\nGet chocolate wasted at the 21st Annual Ghirardelli Chocolate Festival, held in Ghirardelli Square! There will be live culinary demos, ice cream eating contests, chocolate tastings, and much more!'),
(13, 'Nightlife at CAL Academy', '1399 W San Carlos St\r\n(408) 971-3098', '2016-12-15 00:00:00', 1, 'Education', 1, 'Nightlife at CAL Academy: Claude’s 21st Birthday Bash | Music by Mom DJs');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
