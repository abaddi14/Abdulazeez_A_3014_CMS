-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 21, 2019 at 06:28 AM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bikes`
--

CREATE TABLE `tbl_bikes` (
  `bikes_id` int(11) NOT NULL,
  `bikes_name` varchar(750) NOT NULL,
  `bikes_size` varchar(750) NOT NULL,
  `bikes_price` varchar(750) NOT NULL,
  `bikes_description` text NOT NULL,
  `bikes_discount` varchar(750) NOT NULL,
  `bikes_colour` varchar(750) NOT NULL,
  `bikes_logoBrand` varchar(750) NOT NULL DEFAULT 'logoBrand.jpg',
  `bikes_img` varchar(750) NOT NULL DEFAULT 'product.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_bikes`
--

INSERT INTO `tbl_bikes` (`bikes_id`, `bikes_name`, `bikes_size`, `bikes_price`, `bikes_description`, `bikes_discount`, `bikes_colour`, `bikes_logoBrand`, `bikes_img`) VALUES
(26, 'GT Aggressor Comp 27.5 Men\'s Mountain Bike 2019', 'Medium', '649.99', 'GT has taken inspiration from sport utility vehicles with their go anywhere attitue and applied it to the Aggressor series mountain bikes. The GT Aggressor Comp 27.5 Men\'s Mountain Bike 2019 - Satin Black maneuvers easily over all types of terrain, so whether you\'re heading out for a weekend of riding at your favorite local single track or leading your family on a more casual cruise, you\'ll be prepared. 27.5\" wheels provide the perfect blend of good rollover capability and easy maneuverability in tight corners and the entire bike is designed with capable handling, rugged versatility and comfortable, confidence-inspiring performance in mind.\r\n\r\nThe GT Aggressor Comp model provides incredible features and an upgraded component set compared to the Sport model. Perfect for those looking to get into the sport of mountain biking or for anyone looking to upgrade their current ride.', '', 'Satin Black', 'gt.png', 'product17.jpg'),
(27, 'GT Avalanche Sport 29/27.5 Men\'s Mountain Bike 2019', 'Large', '759.99', 'The Avalanche is one of the longest running GT models and for good reason. The GT Avalanche Sport is certainly not short on features. With a high-end aluminum frame and modern geometry, you will be able to be out riding hard without busting your wallet. With reliable Shimano components and mechanical disc brakes to provide consistent stopping power, you’ll be wanting more after each ride.\r\n\r\nThe Avalanche Sport model provides an entry-level option for most, packed with the features needed to get out riding but at an affordable price point.', '', 'Gloss Aqua', 'gt.png', 'product18.jpg'),
(28, 'Nakamura Adventure 12 Kids\' Training Bike 2018', 'Kids', '59.97', 'The 12inch wheeled Nakamura Adventure comes equipped with toolless removable training wheels. When the child is ready to try riding a two-wheeler the training wheels can be easily removed by depressing two buttons and sliding them out from the mount bracket without the use of any tools. If the child is feeling little less confident, simply reverse the procedure and the training wheels are back on until they are ready to try again.', '', 'Yellow/Blue', 'nakamura.png', 'product19.jpg'),
(29, 'GT Transeo Comp 700c Men\'s Hybrid Bike 2019', 'XL', '699.99', 'There are so many reasons to ride a bike. Whether you’re looking to stay fit, have fun exploring your city, commuting to work or school or keeping it green while getting errands done, the Men\'s GT Transeo Comp 2019 - Blue blends all of your needs into one sleek ride. With a suspension fork to smooth out the bumps in the road or pathway, space for racks so you can carry extra loads, this bike is ready to cover all of the bases.\r\n\r\nThe GT Transeo Comp also features a better component set compared to the Sport model for those who want an upgraded ride.', '', 'Blue', 'gt.png', 'product20.jpg'),
(30, 'Diadora Artico 26\" Fatbike - 2019', 'Large', '1,199.99', 'Go places you’ve never biked before with the Diadora Artico fat bike. The 4.9” wide tires provide exceptional grip and floatation on all surfaces. The all-weather Artico performs great in muddy conditions and sandy soft terain but where it really shines is on your favorite winter snow covered trails. No more putting the bike away for the winter when you ride the versatile Artico.', '', 'Silver', 'diadora.jpg', 'product21.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `categories_id` mediumint(9) UNSIGNED NOT NULL,
  `categories_name` varchar(750) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`categories_id`, `categories_name`) VALUES
(1, 'MEN'),
(2, 'WOMEN'),
(3, 'KIDS'),
(4, 'JERSEYS'),
(5, 'EQUIPMENTS'),
(6, 'BIKES'),
(7, 'SHOES');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_equipments`
--

CREATE TABLE `tbl_equipments` (
  `equipments_id` int(11) NOT NULL,
  `equipments_name` varchar(750) NOT NULL,
  `equipments_img` varchar(750) NOT NULL DEFAULT 'product.jpg',
  `equipments_size` varchar(750) NOT NULL,
  `equipments_price` varchar(750) NOT NULL,
  `equipments_description` text NOT NULL,
  `equipments_discount` varchar(750) NOT NULL,
  `equipments_colour` varchar(750) NOT NULL,
  `equipments_logoBrand` varchar(750) NOT NULL DEFAULT 'logoBrand.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_equipments`
--

INSERT INTO `tbl_equipments` (`equipments_id`, `equipments_name`, `equipments_img`, `equipments_size`, `equipments_price`, `equipments_description`, `equipments_discount`, `equipments_colour`, `equipments_logoBrand`) VALUES
(21, 'Marmot Catalyst 2 Person Tent with Footprint', 'product22.jpg', '', '259.99', 'Designed as a roomy, livable tent that is still light in weight, the freestanding marmot Catalyst 2 person tent has all the ideal features for a casual camping trip, like a seam-taped catenary cut floor, color-coded poles for easy set-up and two D-shaped doors, along with enough room and pockets to stash and organize all your necessary gear.', '', 'Orange', 'marmot.jpg'),
(22, 'Big Agnes Rattlesnake SL 2 Person mtnGLO Tent', 'product23.jpg', '', '399.99', 'Light up your camp with the Rattlesnake SL mtnGLO® backpacking tent. Illuminated with patent-pending mtnGLO Tent Light Technology featuring LED lights integrated into the tent body; experience ambient light in your shelter with the click of a button. A roomie, superlight, three season backpacking tent with a double door/double vestibule floor plan and the comfort of built-in lighting to give you a backcountry experience like never before.', '', 'Green', 'bigagnes.png'),
(23, 'ENO DoubleNest Hammock', 'product24.jpg', '', '99.99', 'The DoubleNest reigns supreme. It\'s the bread-and-butter of the ENO lineup. It\'s your all-access pass to relaxation. Big enough for two and palatial for one, the DoubleNest still manages to stuff easily into its attached compression sack. Take it anywhere, set it up in seconds flat, lay back and Oh, you\'ve got somebody wanting to join you? You\'ve got room for one more!', '', 'Soundwave Aqua', 'eno.png'),
(24, 'Banff Ridge Pioneer Chair', 'product25.jpg', '', '39.99', 'The effortless set-up means you’ll be relaxing in no time with the Banff Ridge Pioneer chair which offers a mesh cup holder as well as a convenient carry bag.', '', 'Blue', 'banff.jpg'),
(25, 'ENO DoubleNest Hammock', 'product26.jpg', '', '99.99', 'The DoubleNest reigns supreme. It\'s the bread-and-butter of the ENO lineup. It\'s your all-access pass to relaxation. Big enough for two and palatial for one, the DoubleNest still manages to stuff easily into its attached compression sack. Take it anywhere, set it up in seconds flat, lay back and Oh, you\'ve got somebody wanting to join you? You\'ve got room for one more!', '', 'Camp', 'eno.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jerseys`
--

CREATE TABLE `tbl_jerseys` (
  `jerseys_id` int(11) NOT NULL,
  `jerseys_name` varchar(750) NOT NULL,
  `jerseys_img` varchar(750) NOT NULL DEFAULT 'product.jpg',
  `jerseys_size` varchar(750) NOT NULL,
  `jerseys_price` varchar(750) NOT NULL,
  `jerseys_description` text NOT NULL,
  `jerseys_discount` varchar(750) NOT NULL,
  `jerseys_colour` varchar(750) NOT NULL,
  `jerseys_logoBrand` varchar(750) NOT NULL DEFAULT 'logoBrand.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_jerseys`
--

INSERT INTO `tbl_jerseys` (`jerseys_id`, `jerseys_name`, `jerseys_img`, `jerseys_size`, `jerseys_price`, `jerseys_description`, `jerseys_discount`, `jerseys_colour`, `jerseys_logoBrand`) VALUES
(16, 'NBA 2019 All-Star Toronto Raptors Leonard Swingman Jersey', 'product27.jpg', 'XL', '$150.00', 'Represent your team at the 2019 NBA All-Star Game with this Leonard Toronto Raptors jersey from Nike. It boasts Raptors graphics and classic trims along with Dri-FIT technology for added comfort. Also featured is NikeConnect technology, which unlocks exclusive content including highlights, special offers and more epic fan experiences on game day.', 'DISCOUNT UNAPPLIED', 'BLACK', 'Nike_logo.jpeg'),
(17, 'Toronto Maple Leafs Mitch Marner Authentic Home Hockey Jersey', 'product28.jpg', 'XL', '$249.99', 'Emblazoned with a Maple Leaf’s tackle-twill crest and Number 16’s name and number on the back, the Toronto Maple Leafs Mitch Marner Authentic Pro Home Hockey Jersey lets everyone know which player you love best. Members of Leaf Nation can stay cool and comfortable during every game in this authentic replica hockey jersey, thanks to its heat-managing, moisture-wicking climalite® technology.', 'DISCOUNT UNAPPLIED', 'BLUE', 'adidas-logo.jpg'),
(18, 'Toronto Blue Jays Marcus Stroman Home Baseball Jersey', 'product29.jpg', 'XL', '$159.99', 'Enjoy the Toronto Blue Jays game in style and comfort with your new Marcus Stroman Jays home jersey.', '25% OFF* - DISCOUNT APPLIED', 'WHITE', 'Majestic-Logo.jpeg'),
(19, 'Toronto Blue Jays 2017 Alternate Baseball Jersey', 'product30.jpg', 'L', '$154.99', 'Match Josh Donaldson, Kevin Pillar, Troy Tulowitzki and the rest of the team when they take to the field this season. The Toronto Blue Jays 2017 Alternate Baseball Jersey bears the Embroidered Canadian Maple Leaf on the left sleeve.', 'DISCOUNT UNAPPLIED', 'RED', 'Majestic-Logo.jpeg'),
(20, 'Vancouver Whitecaps adidas Men\'s Jersey Hook Tee', 'product31.jpg', 'XL', '$34.99', 'Introduce some bold MLS team swag into your wardrobe with this unique Vancouver Whitecaps adidas Men’s Jersey Hook Tee. You’ll easily look like the most dedicated fan wherever you go this season when you sport this on the pitch, in the streets or in the stands. Officially Licensed by MLS.', 'DISCOUNT UNAPPLIED', 'CHARCOAL', 'adidas-logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kids`
--

CREATE TABLE `tbl_kids` (
  `kids_id` int(11) NOT NULL,
  `kids_name` varchar(750) NOT NULL,
  `kids_img` varchar(750) NOT NULL DEFAULT 'product.jpg',
  `kids_size` varchar(750) NOT NULL,
  `kids_price` varchar(750) NOT NULL,
  `kids_description` text NOT NULL,
  `kids_discount` varchar(750) NOT NULL,
  `kids_colour` varchar(750) NOT NULL,
  `kids_logoBrand` varchar(750) NOT NULL DEFAULT 'logoBrand.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_kids`
--

INSERT INTO `tbl_kids` (`kids_id`, `kids_name`, `kids_img`, `kids_size`, `kids_price`, `kids_description`, `kids_discount`, `kids_colour`, `kids_logoBrand`) VALUES
(11, 'adidas Originals Boys\' Superstar Jacket', 'product11.jpg', 'XL', '$64.99', 'An iconic look remixed for today. This track jacket comes in smooth, stretchy tricot fabric. It features timeless details like an embroidered Trefoil logo on the front and 3-Stripes down the sleeves. This jacket is made with recycled polyester.', '$64.99', 'BRIGHT RED', 'adidas-logo.jpg'),
(12, 'Nike Sportswear Boys\' Woven Full Zip Jacket', 'product12.jpg', 'M', '$37.97', 'Zip up and move out in comfort with Nike Sportswear Boys’ Woven Jacket. A full-zip design with a paneled hood offers versatile, lightweight coverage to help you stay warm when the seasons start to change.', 'DISCOUNT UNAPPLIED', 'BLACK / WHITE', 'Nike_logo.jpeg'),
(13, 'The North Face Boys\' Zipline Rain Jacket', 'product14.jpg', 'S', '$79.99', 'Ready to keep him dry during all-day adventures in rainy weather, this breathable, waterproof rain jacket is finished with a comfortable mesh lining.', 'DISCOUNT UNAPPLIED', 'DISCOUNT UNAPPLIED', 'FGL_TNF_logo-.jpg'),
(14, 'Under Armour Boys\' Sackpack Full Zip Jacket', 'product13.jpg', 'M', '$36.88', 'The Under Armour Boys\' Sackpack Jacket has UA Storm technology that repels water without sacrificing breathability.', '25% OFF* - DISCOUNT APPLIED', 'NEON CORAL / STEALTH GRAY', 'under-armour-brand-logo.jpg'),
(15, 'Infant Toronto Raptors Overtime Creeper Set', 'product32.jpg', '24MOS', '$34.99', 'Your little one’s NBA fandom will start off on the right foot when you get them this Infant Toronto Raptors Overtime Creeper Set. The team graphics are bold and are perfect to show off their new-found basketball loyalty. Officially Licensed by the NBA.', 'DISCOUNT UNAPPLIED', 'RED', 'Nike_logo.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_men`
--

CREATE TABLE `tbl_men` (
  `men_id` int(11) NOT NULL,
  `men_name` varchar(750) NOT NULL,
  `men_img` varchar(750) NOT NULL DEFAULT 'product.jpg',
  `men_size` varchar(750) NOT NULL,
  `men_price` varchar(750) NOT NULL,
  `men_description` text NOT NULL,
  `men_discount` varchar(250) NOT NULL,
  `men_colour` varchar(250) NOT NULL,
  `men_logoBrand` varchar(750) NOT NULL DEFAULT 'logoBrand.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_men`
--

INSERT INTO `tbl_men` (`men_id`, `men_name`, `men_img`, `men_size`, `men_price`, `men_description`, `men_discount`, `men_colour`, `men_logoBrand`) VALUES
(1, 'DC Men\'s Dagup 5 Full Zip Jacket - Black', 'product1.jpg', '2XL', '$44.99', 'Fashioned in lightweight, water-resistant polyester plain weave fabric, cut in a comfortable regular fit and rounded out with an unlined design, this water-resistant hooded windbreaker for men joins the squad in the DC Shoes spring/summer outer layer collection.', '25% Off* - Discount Applied', 'Black', 'logoBrand.jpg'),
(2, 'O\'Neill Men\'s The Standard Full Zip Hoodie - Heather Black', 'product2.jpg', '2XL', '$52.49', 'O’Neill’s Standard Zip Up will work and play as hard as you do.', '25% OFF* - DISCOUNT APPLIED', 'HEATHER BLACK', 'logoBrand.jpg'),
(3, 'PUMA Men\'s Modern Sports Pants - Peacoat', 'product3.jpg', 'XL', '$64.99', 'PUMA’s lifestyle pieces are inspired by sport and the Modern Sports Pants are no exception. These comfortable sweatpants feature PUMA graphics on back and have a tapered leg for a slim fit.', 'DISCOUNT UNAPPLIED', 'PEACOAT', 'logoBrand.jpg'),
(4, 'Woods Men\'s Hector Crew Baseball Shirt - Peacoat', 'product4.jpg', 'XL', '$40.00', 'Choose style and comfort with the Men’s Hector Crew Neck Baseball Shirt. Featuring a classic Woods® graphic and 3/4 sleeve.', 'DISCOUNT UNAPPLIED', 'PEACOAT MELANGE/BRT WHITE', 'logoBrand.jpg'),
(5, 'The North Face Men\'s Harway Insulated Jacket', 'product5.jpg', '2XL', '$77.97', 'This low profile jacket is lightly insulated to keep you comfortable and warm on cool days on the trail or in the city.', 'DISCOUNT UNAPPLIED', 'TAUPE GREEN ', 'logoBrand.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `products_id` mediumint(9) UNSIGNED NOT NULL,
  `products_name` varchar(750) NOT NULL,
  `products_img` varchar(750) NOT NULL DEFAULT 'product.jpg',
  `products_size` varchar(750) NOT NULL,
  `products_price` varchar(750) NOT NULL,
  `products_description` text NOT NULL,
  `products_discount` varchar(750) NOT NULL,
  `products_colour` varchar(750) NOT NULL,
  `products_logoBrand` varchar(750) NOT NULL DEFAULT 'logoBrand.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`products_id`, `products_name`, `products_img`, `products_size`, `products_price`, `products_description`, `products_discount`, `products_colour`, `products_logoBrand`) VALUES
(1, 'DC Men\'s Dagup 5 Full Zip Jacket - Black', 'product1.jpg', '2XL', '$44.99', 'Fashioned in lightweight, water-resistant polyester plain weave fabric, cut in a comfortable regular fit and rounded out with an unlined design, this water-resistant hooded windbreaker for men joins the squad in the DC Shoes spring/summer outer layer collection.', '25% Off* - Discount Applied', 'Black', 'DC-Logo.jpeg'),
(2, 'O\'Neill Men\'s The Standard Full Zip Hoodie - Heather Black', 'product2.jpg', '2XL', '$52.49', 'O’Neill’s Standard Zip Up will work and play as hard as you do.', '25% OFF* - DISCOUNT APPLIED', 'HEATHER BLACK', 'ONeill_Logo.jpg'),
(3, 'PUMA Men\'s Modern Sports Pants - Peacoat', 'product3.jpg', 'XL', '$64.99', 'PUMA’s lifestyle pieces are inspired by sport and the Modern Sports Pants are no exception. These comfortable sweatpants feature PUMA graphics on back and have a tapered leg for a slim fit.', 'DISCOUNT UNAPPLIED', 'PEACOAT', 'PUMA-Logo.jpeg'),
(4, 'Woods Men\'s Hector Crew Baseball Shirt - Peacoat', 'product4.jpg', 'XL', '$40.00', 'Choose style and comfort with the Men’s Hector Crew Neck Baseball Shirt. Featuring a classic Woods® graphic and 3/4 sleeve.', 'DISCOUNT UNAPPLIED', 'PEACOAT MELANGE/BRT WHITE', 'FGL.jpeg'),
(5, 'The North Face Men\'s Harway Insulated Jacket', 'product5.jpg', '2XL', '$77.97', 'This low profile jacket is lightly insulated to keep you comfortable and warm on cool days on the trail or in the city.', 'DISCOUNT UNAPPLIED', 'TAUPE GREEN ', 'FGL_TNF_logo-.jpg'),
(6, 'Lorna Jane Women\'s Feel The Beat Hoodie', 'product9.jpg', 'XS', '$109.99', 'The perfect training partner for those cool morning workouts. Made from lightweight LJ Active™ mesh fabric allowing airflow during any activity. A must have layering piece for any active wardrobe.', 'DISCOUNT UNAPPLIED', 'WHITE', 'Lorna-Jane-Logo.jpg'),
(7, 'adidas Originals Women\'s Trefoil Hoodie', 'product6.jpg', 'XS', '$89.99', 'The Trefoil debuted in 1972, and it’s been making headlines ever since. Showcasing pure adidas style, this sweatshirt stands out with the iconic Trefoil logo on the front. The soft pullover is made of French terry for a cozy look and feel.', 'DISCOUNT UNAPPLIED', 'GREEN', 'adidas-logo.jpg'),
(8, 'Nike Sportswear Women\'s Heritage Pullover Hoodie', 'product7.jpg', 'XS', '$80.00', 'Make it memorable in the Nike Sportswear Women’s Fleece Hoodie, a timeless look made with soft, semi-brushed fleece fabric. A Chevron design throws it back to Windrunner style, while ribbed details add a classic feel.', 'DISCOUNT UNAPPLIED', 'EMBER GLOW/TEAM RED', 'Nike_logo.jpeg'),
(9, 'Helly Hansen Women\'s Hydro Power Ocean Sleeveless Top - Naito Print', 'product8.jpg', 'XL', '$79.99', 'The Ocean Top is a clean designed top that boasts a smooth and modern look.', 'DISCOUNT UNAPPLIED', 'NAITO PRINT', 'helly-hansen-logo.jpg'),
(10, 'Under Armour Women\'s Tech V Neck Twist T Shirt', 'product10.jpg', 'S', '$29.99', 'Made with UA Tech™ fabric that is quick-drying, the UA Tech Twist V Neck T Shirt is a staple piece for your active wardrobe.', '25% OFF* - DISCOUNT APPLIED', 'GREY', 'under-armour-brand-logo.jpg'),
(11, 'adidas Originals Boys\' Superstar Jacket', 'product11.jpg', 'XL', '$64.99', 'An iconic look remixed for today. This track jacket comes in smooth, stretchy tricot fabric. It features timeless details like an embroidered Trefoil logo on the front and 3-Stripes down the sleeves. This jacket is made with recycled polyester.', '$64.99', 'BRIGHT RED', 'adidas-logo.jpg'),
(12, 'Nike Sportswear Boys\' Woven Full Zip Jacket', 'product14.jpg', 'M', '$37.97', 'Zip up and move out in comfort with Nike Sportswear Boys’ Woven Jacket. A full-zip design with a paneled hood offers versatile, lightweight coverage to help you stay warm when the seasons start to change.', 'DISCOUNT UNAPPLIED', 'BLACK / WHITE', 'Nike_logo.jpeg'),
(13, 'The North Face Boys\' Zipline Rain Jacket', 'product15.jpg', 'S', '$79.99', 'Ready to keep him dry during all-day adventures in rainy weather, this breathable, waterproof rain jacket is finished with a comfortable mesh lining.', 'DISCOUNT UNAPPLIED', 'DISCOUNT UNAPPLIED', 'FGL_TNF_logo-.jpg'),
(14, 'Under Armour Boys\' Sackpack Full Zip Jacket', 'product16.jpg', 'M', '$36.88', 'The Under Armour Boys\' Sackpack Jacket has UA Storm technology that repels water without sacrificing breathability.', '25% OFF* - DISCOUNT APPLIED', 'NEON CORAL / STEALTH GRAY', 'under-armour-brand-logo.jpg'),
(15, 'Infant Toronto Raptors Overtime Creeper Set', 'proudct32.jpg', '24MOS', '$34.99', 'Your little one’s NBA fandom will start off on the right foot when you get them this Infant Toronto Raptors Overtime Creeper Set. The team graphics are bold and are perfect to show off their new-found basketball loyalty. Officially Licensed by the NBA.', 'DISCOUNT UNAPPLIED', 'RED', 'Nike_logo.jpeg'),
(16, 'NBA 2019 All-Star Toronto Raptors Leonard Swingman Jersey', 'product27.jpg', 'XL', '$150.00', 'Represent your team at the 2019 NBA All-Star Game with this Leonard Toronto Raptors jersey from Nike. It boasts Raptors graphics and classic trims along with Dri-FIT technology for added comfort. Also featured is NikeConnect technology, which unlocks exclusive content including highlights, special offers and more epic fan experiences on game day.', 'DISCOUNT UNAPPLIED', 'BLACK', 'Nike_logo.jpeg'),
(17, 'Toronto Maple Leafs Mitch Marner Authentic Home Hockey Jersey', 'product28.jpg', 'XL', '$249.99', 'Emblazoned with a Maple Leaf’s tackle-twill crest and Number 16’s name and number on the back, the Toronto Maple Leafs Mitch Marner Authentic Pro Home Hockey Jersey lets everyone know which player you love best. Members of Leaf Nation can stay cool and comfortable during every game in this authentic replica hockey jersey, thanks to its heat-managing, moisture-wicking climalite® technology.', 'DISCOUNT UNAPPLIED', 'BLUE', 'adidas-logo.jpg'),
(18, 'Toronto Blue Jays Marcus Stroman Home Baseball Jersey', 'product29.jpg', 'XL', '$159.99', 'Enjoy the Toronto Blue Jays game in style and comfort with your new Marcus Stroman Jays home jersey.', '25% OFF* - DISCOUNT APPLIED', 'WHITE', 'Majestic-Logo.jpeg'),
(19, 'Toronto Blue Jays 2017 Alternate Baseball Jersey', 'product30.jpg', 'L', '$154.99', 'Match Josh Donaldson, Kevin Pillar, Troy Tulowitzki and the rest of the team when they take to the field this season. The Toronto Blue Jays 2017 Alternate Baseball Jersey bears the Embroidered Canadian Maple Leaf on the left sleeve.', 'DISCOUNT UNAPPLIED', 'RED', 'Majestic-Logo.jpeg'),
(20, 'Vancouver Whitecaps adidas Men\'s Jersey Hook Tee', 'product31.jpg', 'XL', '$34.99', 'Introduce some bold MLS team swag into your wardrobe with this unique Vancouver Whitecaps adidas Men’s Jersey Hook Tee. You’ll easily look like the most dedicated fan wherever you go this season when you sport this on the pitch, in the streets or in the stands. Officially Licensed by MLS.', 'DISCOUNT UNAPPLIED', 'CHARCOAL', 'adidas-logo.jpg'),
(21, 'Marmot Catalyst 2 Person Tent with Footprint', 'product22.jpg', '', '259.99', 'Designed as a roomy, livable tent that is still light in weight, the freestanding marmot Catalyst 2 person tent has all the ideal features for a casual camping trip, like a seam-taped catenary cut floor, color-coded poles for easy set-up and two D-shaped doors, along with enough room and pockets to stash and organize all your necessary gear.', 'DISCOUNT UNAPPLIED', 'Orange', 'marmot.jpg'),
(22, 'Big Agnes Rattlesnake SL 2 Person mtnGLO Tent', 'product23.jpg', '', '399.99', 'Light up your camp with the Rattlesnake SL mtnGLO® backpacking tent. Illuminated with patent-pending mtnGLO Tent Light Technology featuring LED lights integrated into the tent body; experience ambient light in your shelter with the click of a button. A roomie, superlight, three season backpacking tent with a double door/double vestibule floor plan and the comfort of built-in lighting to give you a backcountry experience like never before.', '25% OFF* - DISCOUNT APPLIED', 'Green', 'bigagnes.png'),
(23, 'ENO DoubleNest Hammock', 'product24.jpg', '', '99.99', 'The DoubleNest reigns supreme. It\'s the bread-and-butter of the ENO lineup. It\'s your all-access pass to relaxation. Big enough for two and palatial for one, the DoubleNest still manages to stuff easily into its attached compression sack. Take it anywhere, set it up in seconds flat, lay back and Oh, you\'ve got somebody wanting to join you? You\'ve got room for one more!', '25% OFF* - DISCOUNT APPLIED', 'Soundwave Aqua', 'eno.png'),
(24, 'Banff Ridge Pioneer Chair', 'product25.jpg', '', '39.99', 'The effortless set-up means you’ll be relaxing in no time with the Banff Ridge Pioneer chair which offers a mesh cup holder as well as a convenient carry bag.', 'DISCOUNT UNAPPLIED', 'Blue', 'banff.jpg'),
(25, 'ENO DoubleNest Hammock', 'product26.jpg', '', '99.99', 'The DoubleNest reigns supreme. It\'s the bread-and-butter of the ENO lineup. It\'s your all-access pass to relaxation. Big enough for two and palatial for one, the DoubleNest still manages to stuff easily into its attached compression sack. Take it anywhere, set it up in seconds flat, lay back and Oh, you\'ve got somebody wanting to join you? You\'ve got room for one more!', 'DISCOUNT UNAPPLIED', 'Camp', 'eno.png'),
(26, 'GT Aggressor Comp 27.5 Men\'s Mountain Bike 2019', 'product17.jpg', 'Medium', '649.99', 'GT has taken inspiration from sport utility vehicles with their go anywhere attitue and applied it to the Aggressor series mountain bikes. The GT Aggressor Comp 27.5 Men\'s Mountain Bike 2019 - Satin Black maneuvers easily over all types of terrain, so whether you\'re heading out for a weekend of riding at your favorite local single track or leading your family on a more casual cruise, you\'ll be prepared. 27.5\" wheels provide the perfect blend of good rollover capability and easy maneuverability in tight corners and the entire bike is designed with capable handling, rugged versatility and comfortable, confidence-inspiring performance in mind.\r\n\r\nThe GT Aggressor Comp model provides incredible features and an upgraded component set compared to the Sport model. Perfect for those looking to get into the sport of mountain biking or for anyone looking to upgrade their current ride.', 'DISCOUNT UNAPPLIED', 'Satin Black', 'gt.png'),
(27, 'GT Avalanche Sport 29/27.5 Men\'s Mountain Bike 2019', 'product18.jpg', 'Large', '759.99', 'The Avalanche is one of the longest running GT models and for good reason. The GT Avalanche Sport is certainly not short on features. With a high-end aluminum frame and modern geometry, you will be able to be out riding hard without busting your wallet. With reliable Shimano components and mechanical disc brakes to provide consistent stopping power, you’ll be wanting more after each ride.\r\n\r\nThe Avalanche Sport model provides an entry-level option for most, packed with the features needed to get out riding but at an affordable price point.', 'DISCOUNT UNAPPLIED', 'Gloss Aqua', 'gt.png'),
(28, 'Nakamura Adventure 12 Kids\' Training Bike 2018', 'product19.jpg', 'Kids', '59.97', 'The 12inch wheeled Nakamura Adventure comes equipped with toolless removable training wheels. When the child is ready to try riding a two-wheeler the training wheels can be easily removed by depressing two buttons and sliding them out from the mount bracket without the use of any tools. If the child is feeling little less confident, simply reverse the procedure and the training wheels are back on until they are ready to try again.', '25% OFF* - DISCOUNT APPLIED', 'Yellow/Blue', 'nakamura.png'),
(29, 'GT Transeo Comp 700c Men\'s Hybrid Bike 2019', 'product20.jpg', 'XL', '699.99', 'There are so many reasons to ride a bike. Whether you’re looking to stay fit, have fun exploring your city, commuting to work or school or keeping it green while getting errands done, the Men\'s GT Transeo Comp 2019 - Blue blends all of your needs into one sleek ride. With a suspension fork to smooth out the bumps in the road or pathway, space for racks so you can carry extra loads, this bike is ready to cover all of the bases.\r\n\r\nThe GT Transeo Comp also features a better component set compared to the Sport model for those who want an upgraded ride.', '25% OFF* - DISCOUNT APPLIED', 'Blue', 'gt.png'),
(30, 'Diadora Artico 26\" Fatbike - 2019', 'product21.jpg', 'Large', '1,199.99', 'Go places you’ve never biked before with the Diadora Artico fat bike. The 4.9” wide tires provide exceptional grip and floatation on all surfaces. The all-weather Artico performs great in muddy conditions and sandy soft terain but where it really shines is on your favorite winter snow covered trails. No more putting the bike away for the winter when you ride the versatile Artico.', '25% OFF* - DISCOUNT APPLIED', 'Silver', 'diadora.jpg'),
(31, 'Nike Men\'s Metcon 4 Training Shoes', 'product33.jpg', '12', '$130.95', 'Nike Metcon 4 Men’s Training Shoe features an updated upper with a zonally placed haptic print for enhanced durability and stability. Flywire technology provides you with a locked-down fit, while the sticky rubber in the forefoot provides excellent traction for running and training.', '25% Off* - Discount Applied', 'BLACK/WHITE/GUM MED BROWN', 'Nike_logo.jpeg'),
(32, 'adidas Men\'s Ultra Boost Running Shoes - Black/Red', 'product34.jpg', '11', '$186.97', 'Enable your best-ever run in the adidas Men\'s Ultra Boost Running Shoes. Designed with energy-returning Boost to deliver an energised push-off with each footstrike, these shoes feature a foot-hugging adidas Primeknit upper that adapts to the movement of your foot as you run. A supportive cage ensures a locked-down fit.', '25% Off* - Discount Applied', 'BLACK', 'adidas-logo.jpg'),
(33, 'Under Armour Men\'s Slingwrap Phase Running Shoes', 'product35.jpg', '12', '$81.95', 'The Under Armour Men\'s Slingwrap Phase Running Shoes features a threadborne upper for a breathable, comfortable fit. The Flexible Coreshort midfoot straps bug both sides of the foot for ultimate lockdown & support.', '25% Off* - Discount Applied', 'TIN/ELEMENTAL/TIN', 'under-armour-brand-logo.jpg'),
(34, 'Under Armour Men\'s Lightning 2 Running Shoes', 'product36.jpg', '10', '$69.98', 'Lightweight cushioning and a snug fit. That\'s what you\'ll get every time you lace up the Under Armour Men\'s Lightning 2 Running Shoes. Featuring a snug knit upper, the Charged Lightning 2 delivers targeted areas of durability, breathability, and support where you need them most. A one-piece Charged Cushioning midsole places your foot close to the ground, delivering responsive cushioning and fast, unstoppable feel.', '$30 Off Our Regular Price', 'ACADEMY/STUDIO/STUDIO', 'under-armour-brand-logo.jpg'),
(35, 'Nike Men\'s Free RN Flyknit 2018 Running Shoes', 'product37.jpg', '12', '$122.95', 'Made for short runs when you want a barefoot-like feel, the Nike Men’s Free RN Flyknit 2018 Running Shoes are the lightest in the Free RN family. Its sock-like upper has more stretch yarns than previous versions, so it hugs your feet more than ever. The innovative sole has an updated construction, yet still expands and contracts with every movement. The packable design makes the shoe easy to stuff into your bag—so you can get in a few miles on the fly.', '25% Off* - Discount Applied', 'BLACK/FLASH CRIMSON-ORANGE PEEL', 'Nike_logo.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products_categories`
--

CREATE TABLE `tbl_products_categories` (
  `products_categories_id` mediumint(8) UNSIGNED NOT NULL,
  `products_id` mediumint(9) NOT NULL,
  `categories_id` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_products_categories`
--

INSERT INTO `tbl_products_categories` (`products_categories_id`, `products_id`, `categories_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 3),
(12, 12, 3),
(13, 13, 3),
(14, 14, 3),
(15, 15, 3),
(16, 16, 4),
(17, 17, 4),
(18, 18, 4),
(19, 19, 4),
(20, 20, 4),
(21, 21, 5),
(22, 22, 5),
(23, 23, 5),
(24, 24, 5),
(25, 25, 5),
(26, 26, 6),
(27, 27, 6),
(28, 28, 6),
(29, 29, 6),
(30, 30, 6),
(31, 31, 7),
(32, 32, 7),
(33, 33, 7),
(34, 34, 7),
(35, 35, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shoes`
--

CREATE TABLE `tbl_shoes` (
  `shoes_id` mediumint(9) NOT NULL,
  `shoes_name` varchar(750) NOT NULL,
  `shoes_img` varchar(750) NOT NULL DEFAULT 'product.jpg',
  `shoes_size` varchar(750) NOT NULL,
  `shoes_price` varchar(750) NOT NULL,
  `shoes_description` text NOT NULL,
  `shoes_discount` varchar(750) NOT NULL,
  `shoes_colour` varchar(750) NOT NULL,
  `shoes_logoBrand` varchar(750) NOT NULL DEFAULT 'logoBrand.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_shoes`
--

INSERT INTO `tbl_shoes` (`shoes_id`, `shoes_name`, `shoes_img`, `shoes_size`, `shoes_price`, `shoes_description`, `shoes_discount`, `shoes_colour`, `shoes_logoBrand`) VALUES
(31, 'Nike Men\'s Metcon 4 Training Shoes', 'product33.jpg', '12', '$130.95', 'Nike Metcon 4 Men’s Training Shoe features an updated upper with a zonally placed haptic print for enhanced durability and stability. Flywire technology provides you with a locked-down fit, while the sticky rubber in the forefoot provides excellent traction for running and training.', '25% Off* - Discount Applied', 'BLACK/WHITE/GUM MED BROWN', 'Nike_logo.jpeg'),
(32, 'adidas Men\'s Ultra Boost Running Shoes - Black/Red', 'product34.jpg', '11', '$186.97', 'Enable your best-ever run in the adidas Men\'s Ultra Boost Running Shoes. Designed with energy-returning Boost to deliver an energised push-off with each footstrike, these shoes feature a foot-hugging adidas Primeknit upper that adapts to the movement of your foot as you run. A supportive cage ensures a locked-down fit.', '25% Off* - Discount Applied', 'BLACK', 'adidas-logo.jpg'),
(33, 'Under Armour Men\'s Slingwrap Phase Running Shoes', 'product35.jpg', '12', '$81.95', 'The Under Armour Men\'s Slingwrap Phase Running Shoes features a threadborne upper for a breathable, comfortable fit. The Flexible Coreshort midfoot straps bug both sides of the foot for ultimate lockdown & support.', '25% Off* - Discount Applied', 'TIN/ELEMENTAL/TIN', 'under-armour-brand-logo.jpg'),
(34, 'Under Armour Men\'s Lightning 2 Running Shoes', 'product36.jpg', '10', '$69.98', 'Lightweight cushioning and a snug fit. That\'s what you\'ll get every time you lace up the Under Armour Men\'s Lightning 2 Running Shoes. Featuring a snug knit upper, the Charged Lightning 2 delivers targeted areas of durability, breathability, and support where you need them most. A one-piece Charged Cushioning midsole places your foot close to the ground, delivering responsive cushioning and fast, unstoppable feel.', '$30 Off Our Regular Price', 'ACADEMY/STUDIO/STUDIO', 'under-armour-brand-logo.jpg'),
(35, 'Nike Men\'s Free RN Flyknit 2018 Running Shoes', 'product37.jpg', '12', '$122.95', 'Made for short runs when you want a barefoot-like feel, the Nike Men’s Free RN Flyknit 2018 Running Shoes are the lightest in the Free RN family. Its sock-like upper has more stretch yarns than previous versions, so it hugs your feet more than ever. The innovative sole has an updated construction, yet still expands and contracts with every movement. The packable design makes the shoe easy to stuff into your bag—so you can get in a few miles on the fly.', '25% Off* - Discount Applied', 'BLACK/FLASH CRIMSON-ORANGE PEEL', 'Nike_logo.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no',
  `user_admin` tinyint(4) DEFAULT NULL,
  `user_access` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`, `user_admin`, `user_access`) VALUES
(1, 'admin', 'admin', '112233', 'admin@example.com', '2019-02-01 19:07:35', '::1', 1, 1),
(2, 'Abdullah', 'Abaddi', '112233', 'abdullah-abdulazeez@hotmail.com', '2019-02-01 20:11:28', '127.0.0.1:8000', 2, 2),
(3, 'Lia', 'Lia ', '112233', 'lia-vernaet@example.com', '2019-04-21 06:27:10', '::1', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_women`
--

CREATE TABLE `tbl_women` (
  `women_id` int(11) NOT NULL,
  `women_name` varchar(750) NOT NULL,
  `women_img` varchar(750) NOT NULL DEFAULT 'product.jpg',
  `women_size` varchar(750) NOT NULL,
  `women_price` varchar(750) NOT NULL,
  `women_description` text NOT NULL,
  `women_discount` varchar(750) NOT NULL,
  `women_colour` varchar(750) NOT NULL,
  `women_logoBrand` varchar(750) NOT NULL DEFAULT 'logoBrand.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_women`
--

INSERT INTO `tbl_women` (`women_id`, `women_name`, `women_img`, `women_size`, `women_price`, `women_description`, `women_discount`, `women_colour`, `women_logoBrand`) VALUES
(6, 'Lorna Jane Women\'s Feel The Beat Hoodie', 'product9.jpg', 'XS', '$109.99', 'The perfect training partner for those cool morning workouts. Made from lightweight LJ Active™ mesh fabric allowing airflow during any activity. A must have layering piece for any active wardrobe.', 'DISCOUNT UNAPPLIED', 'WHITE', 'Lorna-Jane-Logo.jpg'),
(7, 'adidas Originals Women\'s Trefoil Hoodie', 'product6.jpg', 'XS', '$89.99', 'The Trefoil debuted in 1972, and it’s been making headlines ever since. Showcasing pure adidas style, this sweatshirt stands out with the iconic Trefoil logo on the front. The soft pullover is made of French terry for a cozy look and feel.', 'DISCOUNT UNAPPLIED', 'GREEN', 'adidas-logo.jpg'),
(8, 'Nike Sportswear Women\'s Heritage Pullover Hoodie', 'product7.jpg', 'XS', '$80.00', 'Make it memorable in the Nike Sportswear Women’s Fleece Hoodie, a timeless look made with soft, semi-brushed fleece fabric. A Chevron design throws it back to Windrunner style, while ribbed details add a classic feel.', 'DISCOUNT UNAPPLIED', 'EMBER GLOW/TEAM RED', 'Nike_logo.jpeg'),
(9, 'Helly Hansen Women\'s Hydro Power Ocean Sleeveless Top - Naito Print', 'product8.jpg', 'XL', '$79.99', 'The Ocean Top is a clean designed top that boasts a smooth and modern look.', 'DISCOUNT UNAPPLIED', 'NAITO PRINT', 'helly-hansen-logo.jpg'),
(10, 'Under Armour Women\'s Tech V Neck Twist T Shirt', 'product10.jpg', 'S', '$29.99', 'Made with UA Tech™ fabric that is quick-drying, the UA Tech Twist V Neck T Shirt is a staple piece for your active wardrobe.', '25% OFF* - DISCOUNT APPLIED', 'GREY', 'under-armour-brand-logo.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_bikes`
--
ALTER TABLE `tbl_bikes`
  ADD PRIMARY KEY (`bikes_id`);

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indexes for table `tbl_equipments`
--
ALTER TABLE `tbl_equipments`
  ADD PRIMARY KEY (`equipments_id`);

--
-- Indexes for table `tbl_jerseys`
--
ALTER TABLE `tbl_jerseys`
  ADD PRIMARY KEY (`jerseys_id`);

--
-- Indexes for table `tbl_kids`
--
ALTER TABLE `tbl_kids`
  ADD PRIMARY KEY (`kids_id`);

--
-- Indexes for table `tbl_men`
--
ALTER TABLE `tbl_men`
  ADD PRIMARY KEY (`men_id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`products_id`);

--
-- Indexes for table `tbl_products_categories`
--
ALTER TABLE `tbl_products_categories`
  ADD PRIMARY KEY (`products_categories_id`);

--
-- Indexes for table `tbl_shoes`
--
ALTER TABLE `tbl_shoes`
  ADD PRIMARY KEY (`shoes_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_women`
--
ALTER TABLE `tbl_women`
  ADD PRIMARY KEY (`women_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_bikes`
--
ALTER TABLE `tbl_bikes`
  MODIFY `bikes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `categories_id` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_equipments`
--
ALTER TABLE `tbl_equipments`
  MODIFY `equipments_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_jerseys`
--
ALTER TABLE `tbl_jerseys`
  MODIFY `jerseys_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_kids`
--
ALTER TABLE `tbl_kids`
  MODIFY `kids_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_men`
--
ALTER TABLE `tbl_men`
  MODIFY `men_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `products_id` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_products_categories`
--
ALTER TABLE `tbl_products_categories`
  MODIFY `products_categories_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_shoes`
--
ALTER TABLE `tbl_shoes`
  MODIFY `shoes_id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
