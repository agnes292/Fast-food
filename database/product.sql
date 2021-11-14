-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2020 at 03:50 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(255) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `discount` int(11) DEFAULT 0,
  `image_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_list` text COLLATE utf8_unicode_ci NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `buyed` int(255) NOT NULL,
  `rate_total` int(255) NOT NULL DEFAULT 4,
  `rate_count` int(255) NOT NULL DEFAULT 1,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `catalog_id`, `name`, `content`, `price`, `discount`, `image_link`, `image_list`, `view`, `buyed`, `rate_total`, `rate_count`, `created`) VALUES
(49, 1, 'Neapolitan Pizza', 'Neapolitan is the original pizza. This delicious pie dates all the way back to 18th century in Naples, Italy. During this time, the poorer citizens of this seaside city frequently purchased food that was cheap and could be eaten quickly. Luckily for them, Neapolitan pizza was affordable and readily available through numerous street vendors.', '123.00', 0, 'https://th.bing.com/th/id/OIP.fDeGbCDl_mMdhW6UKShsdAHaEO?w=304&h=180&c=7&o=5&dpr=1.25&pid=1.7', '', 4, 2, 4, 1, 0),
(50, 1, 'Chicago Pizza', 'Chicago pizza, also commonly referred to as deep-dish pizza, gets its name from the city it was invented in. During the early 1900’s, Italian immigrants in the windy city were searching for something similar to the Neapolitan pizza that they knew and loved. Instead of imitating the notoriously thin pie, Ike Sewell had something else in mind. He created a pizza with a thick crust that had raised edges, similar to a pie, and ingredients in reverse, with slices of mozzarella lining the dough follow', '160.00', 5, 'https://th.bing.com/th/id/OIP.Zyu9zfxQbFiZfqGiicsqUgHaEK?w=324&h=182&c=7&o=5&dpr=1.25&pid=1.7', '', 0, 0, 4, 1, 0),
(51, 1, 'New York-Style Pizza', 'With its characteristic large, foldable slices and crispy outer crust, New York-style pizza is one of America’s most famous regional pizza types. Originally a variation of Neapolitan-style pizza, the New York slice has taken on a fame all its own, with some saying its unique flavor has to do with the minerals present in New York’s tap water supply', '203.00', 0, 'https://th.bing.com/th/id/OIP.717sO-yuwZRsER5eJl50JgHaEK?w=269&h=180&c=7&o=5&dpr=1.25&pid=1.7', '', 20, 3, 4, 1, 0),
(52, 1, 'Sicilian Pizza', 'Sicilian pizza, also known as \\\"sfincione,\\\" provides a thick cut of pizza with pillowy dough, a crunchy crust, and robust tomato sauce. This square-cut pizza is served with or without cheese, and often with the cheese underneath the sauce to prevent the pie from becoming soggy. Sicilian pizza was brought to America in the 19th century by Sicilian immigrants and became popular in the United States after the Second World War', '232.00', 0, 'https://th.bing.com/th/id/OIP.V-lPfZ1saVvR2wDqNo34-wHaEK?w=333&h=187&c=7&o=5&dpr=1.25&pid=1.7', '', 0, 5, 4, 1, 0),
(53, 1, 'Greek Pizza', 'Greek pizza was created by Greek immigrants who came to America and were introduced to Italian pizza. Greek-style pizza, especially popular in the New England states, features a thick and chewy crust cooked in shallow, oiled pans, resulting in a nearly deep-fried bottom. While this style has a crust that is puffier and chewier than thin crust pizzas, it’s not quite as thick as a deep-dish or Sicilian crust', '432.00', 0, 'https://th.bing.com/th/id/OIP.AW1f76Ufpo8qa_hMyjazpgHaFF?w=259&h=180&c=7&o=5&dpr=1.25&pid=1.7', '', 11110, 222, 4, 9, 0),
(54, 2, 'Korean Hot Wings', 'Finger-licking good, Korean-style hot wings made easy and simple. The sauce can be made up to two weeks ahead of time; flavor will intensify.', '56.00', 2, 'https://th.bing.com/th/id/OIP.acWe1a9O2v66r3n1RtuUqgHaEK?w=328&h=184&c=7&o=5&dpr=1.25&pid=1.7', '', 100, 22, 4, 1, 0),
(55, 2, 'Parmesan Panko Chicken Poppers', 'It can be served as an appetizer, or over a bed of rice as a quick weekday dinner! I usually marinate the night before to give it more flavor, but if it\\\'s a last-minute meal you are preparing, no worries, because there\\\'s still dipping sauce! Serve hot with shredded lettuce and a lemon wedge.', '65.00', 2, 'https://th.bing.com/th/id/OIP.6fOCcVgFDacVX5K3lU4vsAHaEL?w=288&h=180&c=7&o=5&dpr=1.25&pid=1.7', '', 47, 643, 4, 1, 0),
(56, 2, 'Triple Dipped Fried Chicken', 'This is the crispiest, spiciest, homemade fried chicken I have ever tasted! It is equally good served hot or cold and has been a picnic favorite in my family for years', '98.00', 10, 'https://th.bing.com/th/id/OIP.lLYnf87IJXPZqFVYyyCZDgHaDt?w=336&h=174&c=7&o=5&dpr=1.25&pid=1.7', '', 0, 34, 5, 1, 0),
(57, 2, 'Crispy Fried Chicken', 'Breaded buttermilk fried chicken and a pan-drippings gravy with milk or cream. The gravy is great on the chicken, but mash up some potatoes with some butter and cream and bake up some cornbread or biscuits and you have the quintessential southern meal with some northern urban twists.', '35.00', 0, 'https://th.bing.com/th/id/OIP.lam2x-4gDEd7r8PDPxr8zQHaFl?w=257&h=194&c=7&o=5&dpr=1.25&pid=1.7', '', 89, 643, 4, 1, 0),
(58, 3, 'Cardamom Coffee', 'A Fragrant Brew For All Seasons\', \'A cup of fragrant spicy black coffee, laced with cardamom, can transport you to another world. Cardamom coffee is enjoyed in coffee shops in the Middle East as well as in parts of India. While coffee and cardamom may sound like two opposite flavors, the bitterness of the coffee is enhanced by the floral tones of the cardamom spice, making a delicious cup to be savored', '53.00', 0, 'https://th.bing.com/th/id/OIP.6OJu1Pdh4o9_rERvw7sdQgHaE9?w=274&h=183&c=7&o=5&dpr=1.25&pid=1.7', '', 100, 34, 5, 1, 0),
(59, 3, 'Jasmine Tea', 'jasmine tea is a scented tea made by blending green, white, oolong, or black tea leaves of the Camellia sinensis plant with jasmine flowers. The most common variety is jasmine green tea. It is not a caffeine-free beverage and cannot be termed an herbal tea. Some varieties of tea are tea leaves flavored with the jasmine flower extract or jasmine essential oil. The tea is rich in antioxidants that can have a wide range of beneficial effects on your body', '23.00', 0, 'https://th.bing.com/th/id/OIP.YcsLpqn6Yozzjk1TbCM79wHaFj?w=248&h=186&c=7&o=5&dpr=1.25&pid=1.7', '', 68, 33, 4, 1, 0),
(60, 3, 'Ginger Honey Tea', 'A cup of hot ginger honey tea could help alleviate nausea. A study [3] comparing ginger to vitamin B6 (used to relieve nausea) found that its effects are similar. When given to pregnant women in their early pregnancy, it helped in providing relief from nausea, dry retching, and vomiting', '37.00', 2, 'https://th.bing.com/th/id/OIP.vAS-04-P-KFHx0ltHBGOVgHaEo?w=292&h=182&c=7&o=5&dpr=1.25&pid=1.7', '', 300, 288, 5, 1, 0),
(61, 3, 'Coca-Cola', 'Although Coca-Cola doesn’t fall into the traditional category of types of drinks because it’s actually a specific brand, the sheer amount that is consumed each year warrants inclusion on the most popular beverage in the world list.', '13.00', 3, 'https://th.bing.com/th/id/OIP.qbot-gGb4P8S9s88nb2HeQAAAA?w=115&h=180&c=7&o=5&dpr=1.25&pid=1.7', '', 399, 334, 5, 1, 0),
(62, 3, 'Beer', 'Beer, alcoholic beverage produced by extracting raw materials with water, boiling (usually with hops), and fermenting.', '33.00', 5, 'https://th.bing.com/th/id/OIP.pcD5uuQL2z-RMjytTulF4wHaLH?w=204&h=306&c=7&o=5&dpr=1.25&pid=1.7', '', 233, 123, 5, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
