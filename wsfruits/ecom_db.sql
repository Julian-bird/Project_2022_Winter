-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 03, 2022 at 04:36 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_title` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Fresh Fruit'),
(2, 'Vegetables'),
(3, 'Fruit Snacks'),
(4, 'Wine & Drinks'),
(5, 'oil &vinergars');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `password` char(32) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(25) NOT NULL,
  `country` varchar(40) NOT NULL,
  `user_photo` text NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`user_id`, `email`, `firstname`, `lastname`, `password`, `address`, `city`, `country`, `user_photo`) VALUES
(1, 'hongqingwang@gmail.com', 'Hongqing', 'Wang', 'e10adc3949ba59abbe56e057f20f883e', '1234 van daw av', 'Montreal', 'India', 'client');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_amount` float NOT NULL,
  `order_transaction` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `order_currency` varchar(255) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_amount`, `order_transaction`, `order_status`, `order_currency`) VALUES
(1, 345, '345354', 'Completed', 'CNY'),
(2, 346, '34565464', 'Completed', 'CNY'),
(3, 35, '876546', 'Completed', 'CNY'),
(4, 34, '3456546', 'Completed', 'CNY'),
(5, 55, '8765454', 'Completed', 'CNY'),
(6, 345, '345354', 'Completed', 'CNY'),
(7, 345, '345354', 'Completed', 'CNY'),
(8, 3457, '3453954', 'Completed', 'CNY'),
(9, 3457, '3453954', 'Completed', 'CNY'),
(10, 3457, '3453954', 'Completed', 'CNY'),
(11, 3457, '3453954', 'Completed', 'CNY'),
(12, 3457, '3453954', 'Completed', 'CNY'),
(13, 3457, '3453954', 'Completed', 'CNY'),
(14, 3457, '3453954', 'Completed', 'CNY'),
(15, 345, '345354', 'Completed', 'CNY'),
(16, 345, '345354', 'Completed', 'CNY'),
(17, 345, '345354', 'Completed', 'CNY'),
(18, 345, '345354', 'Completed', 'CNY'),
(19, 349895, '3453549', 'Completed', 'CNY'),
(20, 349895, '3453549', 'Completed', 'CNY'),
(21, 349895, '3453549', 'Completed', 'CNY'),
(22, 349895, '3453549', 'Completed', 'CNY'),
(23, 349895, '3453549', 'Completed', 'CNY'),
(24, 349895, '3453549', 'Completed', 'CNY'),
(25, 349895, '3453549', 'Completed', 'CNY'),
(26, 349895, '3453549', 'Completed', 'CNY'),
(27, 349895, '3453549', 'Completed', 'CNY'),
(28, 349895, '3453549', 'Completed', 'CNY'),
(29, 349895, '3453549', 'Completed', 'CNY'),
(30, 349895, '3453549', 'Completed', 'CNY'),
(31, 349895, '3453549', 'Completed', 'CNY'),
(32, 349895, '3453549', 'Completed', 'CNY'),
(33, 349895, '3453549', 'Completed', 'CNY'),
(34, 349895, '3453549', 'Completed', 'CNY'),
(35, 349895, '3453549', 'Completed', 'CNY'),
(36, 349895, '3453549', 'Completed', 'CNY'),
(37, 349895, '3453549', 'Completed', 'CNY'),
(38, 349895, '3453549', 'Completed', 'CNY'),
(41, 345, '345354', 'Completed', 'CNY');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_title` varchar(255) NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `product_price` float NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `short_desc` text NOT NULL,
  `product_image` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_category_id`, `product_price`, `product_quantity`, `product_description`, `short_desc`, `product_image`) VALUES
(1, 'Cherries', 1, 3.56, 2, 'You won\'t find cherries this big and sweet in your local stores! Grown only in Idaho, these crisp gems are sure to be the best you\'ve ever tasted. Their season is short, so don\'t miss out!', 'Cherries', 'product-1-1.jpg'),
(2, 'Pineapple, Golden Jumbo', 1, 3.47, 54, '• This Jumbo Pineapple is a great addition to smoothies\n• Sweet, and Juicy\n• Rich in vitamins, enzymes and antioxidant', 'Pineapple, Golden Jumbo', 'product-1-2.jpg'),
(3, 'Banana', 1, 0.3, 250, 'Soft, sweet and delicious, the banana is a popular choice for breakfast, snacks or any time of the day. The vibrant yellow peel provides natural protection while storing, and is a great indicator of when the fruit is ready to eat!', 'Banana', 'product-1-3.jpg'),
(4, 'litchi', 1, 9.8, 65, 'Lychee are tropical fruits native to China. The heart-shaped fruits have thin, tough, inedible rinds that peel off to reveal juicy, whitish flesh surrounding hard, brown pits.', 'litchi', 'product-1-4.jpg'),
(5, 'Miami Fruit Durian', 1, 97, 50, 'This delicious durian variety is similar in look and texture to Musang King. Chanee durian is flavorful and slightly savory with a melt in your mouth texture when fully thawed.', 'Miami Fruit Durian', 'product-1-5.jpg'),
(6, 'Yellow (Ataulfo) Mango', 1, 2.15, 33, 'Mango offers a wide array of clothing, accessories, designer wear and more with the latest designs and trends covered across all ranges', 'Yellow (Ataulfo) Mango', 'product-1-6.jpg'),
(7, 'Pomegranate', 1, 24, 54, 'Size 9 x 8 cm, lifelike surface process.\nWith bright surface and color, very realistic shape.\nLifelike simulated shape and nice touch, Keep it away from kids under 3.\nGresorth Brand, you will see the quality if you compare with cheaper one.', 'Gresorth 6 Pcs', 'product-1-7.jpg'),
(8, 'Avocado', 1, 4.97, 55, 'As part of guacamole, in a salad or on a bun, avocados can be used in a wide variety of recipes. In many South American countries, avocados are added to milkshakes, made into juice and are a staple for many dips. Many salads also use chopped up avocados in combination with tomatoes, onions and olives', ' Pack of 5 Avocado', 'product-1-8.jpg'),
(9, 'Orange, Seedless', 1, 1.23, 54, 'Sweet, juicy and seedless.', 'Orange, Seedless', 'product-1-9.jpg'),
(10, '\nPitaya Red Area Rug', 1, 5.54, 52, '4,5 kg-box of Pitayas exclusively selected for you. This box includes a sample of artisanal tropical jam as a gift.', '\nPitaya Red Area Rug', 'product-1-10.jpg'),
(11, '\nKiwi', 1, 54.5, 33, 'Kiwifruit or Chinese gooseberry is the edible berry of several species of woody vines in the genus Actinidia.', 'Kiwifruit', 'product-1-11.jpg'),
(12, 'Tomato, Roma', 2, 1.37, 44, 'Roma tomato are a popular choice for canning or sauces, since they do not have very many seeds. Their medium sized nature also makes them a popular choice for salads.', 'Tomato, Roma', 'product-2-12.jpg'),
(13, 'Cabbage, Green', 2, 6.63, 35, 'Sliced thinly, green cabbage can be eaten raw or it can go into stir-fries, soups, and braises. The whole leaves can also be used to make cabbage rolls. Raw leaves are somewhat peppery in flavor, but the cabbage gets sweeter as it cooks.', 'Cabbage, Green', 'product-2-13.jpg'),
(14, 'Asparagus', 2, 4.66, 255, 'Asparagus are usually boiled or steamed but can also be delicious roasted in garlic and olive oil or butter.', 'Asparagus', 'product-2-14.jpg'),
(15, 'Sunset Rainbow Bell Peppers', 2, 2.08, 36, 'Whether sautéed, raw or chopped up in a salad, these rainbow peppers bring flavour, crunch and colour to any meal. Cut them into slices and serve with hummus for a great appetizer, or cook them in a stir fry as a tasty entrée. Invigorate your cooking with this multi-pack. The colour options may change depending on the season and availability.', 'Pepper, Red, yellow, green Bell', 'product-2-15.jpg'),
(16, 'Onion', 2, 1.3, 22, 'onions add an extra punch of flavour to any salad. They are best stored in a cool, dry place in order to prolong their shelf life.', 'Onion', 'product-2-16.jpg'),
(17, 'Mushrooms Shitake Whole', 2, 25.49, 22, 'Shiitake mushroom is a fungus. An extract made from this mushroom is used as medicine.', 'Mushrooms Shitake Whole', 'product-2-17.jpg'),
(18, 'Carrots', 2, 2.47, 33, 'Crunchy and sweet, carrots make a great snack as well as a perfect addition to your salads or sides. Rich in vitamin C and beta-carotene.', 'Carrots', 'product-2-18.jpg'),
(19, 'Corn', 2, 2.99, 33, 'roduces ears 18 cm (7\") long with 1 to 2 meter stalks. As we are located next to the ocean we use a row shaper to raise the soil and make the soil non-compacted.', 'Corn', 'product-2-19.jpg'),
(20, 'Broccoli Stalks', 2, 2.47, 33, 'The flowering head of broccoli can be served with any meal. It tastes great steamed, boiled, baked and is a fresh and healthy side dish. Families have enjoyed a fresh plate of broccoli with their meals for generations.', 'Broccoli Stalks', 'product-2-20.jpg'),
(21, 'Cauliflower', 2, 3.97, 25, 'Steamed, boiled, sautéed or raw, cauliflower is a great addition to any dish. The distinct white florets allow it to stand out amongst its colourful vegetable companions. Cauliflower can be found all year long, and is a favourite to eat raw with a dip, or mixed together with other vegetables as a steamed dish. It is also a popular substitute for potatoes and rice.', 'Cauliflower', 'product-2-21.jpg'),
(22, 'Eggplant, Indian', 2, 70, 25, 'These small Indian eggplants are traditionally cooked in a curry dish. The tender insides can also be scooped out to make sauce and dips.', 'Eggplant, Indian', 'product-2-22.jpg'),
(23, 'Dandy Blend Instant Dandelion Beverage', 3, 21.99, 35, 'Dandy Blend Instant Dandelion Beverage is adapted from an herbal formula that originated in Austria some 200 years ago. Dandy Blend Instant Dandelion Beverage tastes like coffee, but is caffeine free and has no acidity or bitterness. It is made of water-soluble extracts of roasted roots of dandelion, chicory and beets, and extracts of barley and rye. Nothing else is added.', 'Dandy Blend Instant Dandelion Beverage', 'product-3-23.jpg'),
(24, 'Sahale Snacks', 3, 82, 35, 'BETTER EVERYDAY SNACKING When youre on the go to your next adventure, finding the perfect snack can be difficult. But with Sahale raspberry crumble fruit nut mix, youll always have a delicious and wholesome option to stay energized and satisfied.', 'Sahale Snacks Raspberry Crumble Nut Mix, 8 Ounces', 'product-3-24.jpg'),
(25, 'Broccoli Chedda Veggie Pops', 3, 6.99, 35, 'Care to snack yourself into a mood so outrageously upbeat that you’ll turn muck into miracles with just a flash of a smile? That’s the joy of these Broccoli Chedda Veggie Pops. They’re so gleefully tasty, giddily crunchy and grin-inducingly satisfying that the most common side effects are joke telling, slap-happiness and spontaneous acts of kind snacking.', 'Broccoli Chedda Veggie Pops', 'product-3-25.jpg'),
(26, 'Sahale Snacks, Snack Mix', 3, 8.85, 36, 'Inspired by a pub near Tokyo and some shared edamame snacks, Sahale Snacks Asian Sesame Edamame Bean + Nut Snack Mix is unlike any nuts or trail mix you’ve had before. It’s the epitome of savory snacks, featuring roasted edamame, crisp lentils and puffed brown rice, all blended with dry roasted cashews, chickpeas, sesame seeds and a medley of mild spices. The result is the ideal umami flavor, perfect when you need a hearty protein snack. And if it’s gluten free snacks you’re searching for, this mix satisfies that need, too. Grab a bag to elevate your snacking experience.', 'Sahale Snacks, Snack Mix, Asian Sesame Edamame Bean + Nut, 4 oz (113 g)', 'product-3-26.jpg'),
(27, 'Let\'s Do Organics', 3, 6.4, 35, 'Suitable for vegan, gluten-free, paleo, and other special diets, Let\'s Do Organic Coconut Flakes contain no sweeteners, preservatives or whiteners.', 'Coconut Flakes, 200g', 'product-3-27.jpg'),
(28, 'Simple Kitchen Freeze-Dried Mango', 3, 9.8, 33, 'This box includes six pouches of Simple Kitchen\'s (a Wise Company brand) 4 serving freeze-dried mango. No fake flavors or preservatives.', 'Simple Kitchen Freeze-Dried Mango', 'product-3-28.jpg'),
(29, 'Stevia Sweetener', 3, 7.82, 36, '100% Natural Stevia Sweetener - 70 x 1g Packets', '100% Natural Stevia Sweetener - 70 x 1g Packets', 'product-3-29.jpg'),
(30, ' \nOrganic India Revive Superfood Greens Original', 3, 13.99, 35, 'Revive Superfood Greens provides a remarkably concentrated form of daily nutrition – blending multiple nutritious plants such as Moringa, Wheatgrass, and superfood Spirulina to help you get the daily greens you need to optimize your health and wellness. How to use: Add one packet to at least 300ml of water, your favorite beverage, smoothie, or soup. ', ' \nOrganic India Revive Superfood Greens Original', 'product-3-30.jpg'),
(31, 'Navitas Organics Cacao Powder', 3, 13.39, 42, 'Navitas Organics Cacao Powder brings the chocolate factory to your kitchen, as it instantly transforms smoothies, desserts, pies, and countless other recipes into the healthiest chocolate indulgence around. Put a spoonful into your next treat and understand why this super food has been enjoyed for thousands of years. Plus, with no added sugar, Navitas Organics Cacao Powder is an exceptionally healthy way to stock up on antioxidants and important minerals like magnesium and iron.\n', 'Navitas Organics Cacao Powder', 'product-3-31.jpg'),
(32, 'Organic Spirulina Powder', 3, 18.65, 35, 'Organic spirulina powder is extracted from 100% natural spirulina. EU and NOP organic. 100% traceable.', 'California Gold Nutrition, SUPERFOODS, Organic Spirulina Powder, 8.5 oz (240 g)', 'product-3-32.jpg'),
(33, '100% Organic Spirulina', 3, 23.99, 34, 'The highest quality collagen protein powder, made in Canada, non-GMO, grassfed. Healthy hair, glowing skin and strong nails to gut and joint health - it\'s a super powder. 100% Natural.', '100% Organic Spirulina', 'product-3-33.jpg'),
(34, 'Aberlour A\'bunadh Speyside Single Malt', 4, 101.25, 24, 'A\'bunadh is a whisky hand-made from start to finish with each batch being created to ensure a rich and complex flavour of moist raisin, and homemade fruit cake.', 'Scotch whisky   |   750 ml   |   United Kingdom  Scotland', 'product-4-34.jpg'),
(35, '19 Crimes Shiraz/Grenache/Mataro', 4, 18.5, 35, 'The Shiraz is the brooding component that brings the core of dark fruits, liquorice and round ripe tannins. ', 'Red wine   |   750 ml   |   Australia  South Eastern Australia', 'product-4-35.jpg'),
(36, 'Absintherie des Cantons Fleur Bleue', 4, 55.6, 24, 'Come taste our two absinthes (Joual vert and Fleur Bleue), two gins (Wendigo and Panoramix) and Aquavit Belle-Isle.', 'Absinth   |   500 ml   |   Canada  Quebec', 'product-4-36.jpg'),
(37, '19 Crimes Hard Chard', 4, 17.95, 142, 'The striking labels of 19 crimes show creativity. It also shows in the glass with this rich chardonnay displaying a brilliant yellow colour with aromas and flavours of vanilla, hazelnuts, oatmeal, honey and pear. Medium-plus bodied and rich with a lengthy finish. Enjoy with lobster tail dipped in a lemon butter sauce.', 'White wine   |   750 ml   |   Australia  South Eastern Australia', 'product-4-37.jpg'),
(38, '3 Lacs Citron Tournesol', 4, 45.25, 40, 'This gin offers a perfect balance between the freshness of lemon and the richness of organic Quebec sunflower', 'Dry gin   |   750 ml   |   Canada  Quebec', 'product-4-38.jpg'),
(39, '1769 Distillery Azura', 4, 43, 36, '1769 Distillery was founded by a husband and wife team to create and distill premium quality spirits in an urban setting. ', 'Dry gin   |   750 ml   |   Canada  Quebec', 'product-4-39.jpg'),
(40, 'Abel Miel et Propolis', 4, 45, 25, 'Great gin with honeysuckle’s note and hint of vegetal notes as well. Doesn’t give you the sweet feeling of honey so it’s not overwhelming but the aroma’s on the nose make it perfect for cocktails or tasting.', 'Flavoured genever   |   750 ml   |   Canada  Quebec', 'product-4-40.jpg'),
(41, '3 Lacs Gin Limonade Pink Grapefruit and Rosemary', 4, 15.6, 100, 'The Distillerie 3 Lacs is proud to present its first ready-to-drink, a sparkling pink gin-based lemonade that will appeal to gin lovers and newbies alike.', 'Spirit-based cooler   |   4 x 355 ml   |   Canada  Quebec', 'product-4-41.jpg'),
(42, '3 Lacs Lime Basilic', 4, 45.5, 77, '3 Lacs Lime basilic. Pourcentage d\'alcool : 41%. Arômes: Agrumes,; Basilic,; Goût frais de lime,; lime,. Distillerie 3 Lacs, Salaberry-de-Valleyfield, 41%', 'Dry gin   |   750 ml   |   Canada  Quebec', 'product-4-42.jpg'),
(43, '18.8', 4, 30.25, 19, 'Distilled eight times to 18.8% abv, this small-batch, locally-produced vodka maintains its taste and quality. ', 'Dry gin   |   750 ml   |   Canada  Ontario', 'product-4-43.jpg'),
(44, '1989 Taffel Akvavit', 4, 39.5, 12, '1989 Taffel Akvavit. Flavoured eau de vie (carraway). | 750 ml. | Canada. Quebec. Loader. Bonus 15x Pts.', 'Flavoured eau de vie (carraway)   |   750 ml   |   Canada  Quebec', 'product-4-44.jpg'),
(45, 'Mazola Canola Oil', 5, 12.67, 33, 'Mazola Canola Oil is a wise choice for today’s lifestyles. Not only does Mazola provide superior performance in frying, cooking, baking and dressings but it contains No Additives or Preservatives and is Low in Saturated Fat!', '2.84 LMazola Canola Oil ', 'product-5-45.jpg'),
(46, 'Terra Delyssa Extra Light Olive Oil 1L', 5, 9.97, 40, 'Extra Light Flavored Olive Oil. Ideal for sauteing, baking and everyday cooking.', 'ExtraLightOliveOil', 'product-5-46.jpg'),
(47, 'Gallo Extra Virgin Olive Oil', 5, 8.97, 44, 'A robust flavour with a distinct aroma and taste. Gallo Extra Virgin Olive oil is perfect in salads, dressing vegetables, and other cooking applications.\nAs well as the wonderful flavor of olive oil, this product has many health benefits. Olive oil can be used on salads, pasta, fish and almost anything else.', '1L Gallo Extra Virgin Olive Oil', 'product-5-47.jpg'),
(48, 'Great Value Toasted Sesame Oil', 5, 4.97, 25, 'Great Value Toasted Sesame Oil,Product of Mexico', '185 ml Great Value Toasted Sesame Oil', 'product-5-48.jpg'),
(49, 'Great Value Pure White Vinegar', 5, 1.47, 23, 'Product shall be White Vinegar. White Vinegar is an aged an filtered product obtained from the acetous fermentation of distilled grain-derived ethanol and diluted with spring natural water.', '1L Great Value Pure White Vinegar', 'product-5-49.jpg'),
(50, 'Nakano Natural Rice Vinegar', 5, 4.27, 35, 'The most versatile of flavors lightly sweetened mild vinegar flavor is perfect for splashing on meat, shrimp, pasta or almost anything else!.', '355ml Nakano Natural Rice Vinegar', 'product-5-50.jpg'),
(51, 'Unico Organic Apple Cider Vinegar with the \'Mother\' 500mL.', 5, 3.97, 25, 'Unico Organic Apple Cider Vinegar with the \'Mother\" Raw and unfiltered is naturally gluten free. It is a great addition to salads, vegetables, and sauces.', 'Unico Organic Apple Cider Vinegar with the \'Mother\' 500mL.', 'product-5-51.jpg'),
(52, 'Plochman\'s Vegetable Oil', 5, 13.97, 55, 'Vegetable Oil is a premium quality oil that is ideal for deep frying, pan frying, baking, seasonings, salad dressings and wok cooking. Vegetable Oil has no trans fats, no cholesterol, is low in saturated fats and is also a source of Omega-3 and Omega-6. A healthy diet low in saturated and trans fats may reduce the risk of heart disease.', '5L Plochman\'s Vegetable Oil', 'product-5-52.jpg'),
(53, 'Plochman\'s Corn Oil', 5, 12.99, 25, 'Corn Oil has no trans fats, no cholesterol, and is low in saturated fat. A healthy diet low in saturated and trans fats may reduce the risk of heart disease. Corn Oil is also a source of omega-6 polyunsaturated fatty acids.', '3.78L Plochman\'s Corn Oil', 'product-5-53.jpg'),
(54, 'Great Value Canola Oil', 5, 8.67, 35, 'Canola Oil has no trans fats, no cholesterol, and is low in unhealthy saturated fats, containing the lowest level of saturated fatty acids amongst vegetable oils. In addition, Canola oil is a source of omega-3 polyunsaturated fat, a fatty acid that helps reduce the risk of coronary heart disease and stroke.\ninfo_custom', '2.84L Great Value Canola Oil', 'product-5-54.jpg'),
(55, 'Great Value Canola Oil, 1 gal', 5, 8.48, 54, 'Great Value Canola Oil is great for frying, baking, making salad dressings, and more! Having a product that mixes well with other ingredients and is light on taste is essential to any kitchen. ', 'Great Value Canola Oil, 1 gal', 'product-5-55.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
CREATE TABLE IF NOT EXISTS `reports` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_price` float NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`report_id`, `product_id`, `order_id`, `product_price`, `product_title`, `product_quantity`) VALUES
(1, 1, 0, 25.59, '', 1),
(2, 1, 0, 25.59, '', 3),
(3, 1, 0, 25.59, '', 3),
(4, 1, 0, 25.59, '', 3),
(5, 1, 0, 25.59, '', 3),
(6, 1, 0, 25.59, '', 3),
(7, 1, 0, 25.59, '', 3),
(8, 1, 0, 25.59, '', 3),
(9, 1, 0, 25.59, '', 3),
(10, 1, 0, 25.59, '', 3),
(11, 1, 29, 25.59, '', 3),
(12, 1, 30, 25.59, '', 3),
(13, 1, 31, 25.59, '', 3),
(14, 1, 32, 25.59, '', 3),
(15, 1, 33, 25.59, '', 3),
(16, 1, 39, 25.59, 'Olivine Oil ', 3),
(17, 1, 40, 25.59, 'Olivine Oil ', 3),
(18, 2, 41, 2499.99, 'Dell XPS 13 2020', 1);

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

DROP TABLE IF EXISTS `slides`;
CREATE TABLE IF NOT EXISTS `slides` (
  `slide_id` int(11) NOT NULL AUTO_INCREMENT,
  `slide_title` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  PRIMARY KEY (`slide_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`slide_id`, `slide_title`, `slide_image`) VALUES
(24, 'pass_01', 'slider_1.jpg'),
(25, 'pass_02', 'slider_2.jpg'),
(26, 'pass_03', 'slider_3.jpg'),
(27, 'pass_04', 'slider_4.jpg'),
(28, 'pass_05', 'slider_5.jpg'),
(29, 'pass_06', 'slider_6.jpg'),
(30, 'pass_07', 'slider_7.jpg'),
(34, 'pass_08', 'slider_8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` char(32) NOT NULL,
  `user_photo` text NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `user_photo`) VALUES
(1, 'tendai', 'tendai@gmail.com', '1234', ''),
(2, 'ashley', 'ashley@support.com', '1234', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
