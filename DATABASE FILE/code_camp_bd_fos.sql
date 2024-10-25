-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2024 at 11:45 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `admin` (
  `adm_id` int(11) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'ccbd', '0d89ec971a7bcfe26d68c177a9d53334', 'admin@gmail.com', '', '2023-02-22 07:18:13');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(11) NOT NULL,
  `rs_id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(1, 1, 'Beans with Fried Plantain and Gari', 'Popularly known as Gob3. This meal fills like no other. A favorite of every Ghanaian.', 30.00, 'beans.jpg'),
(2, 1, 'Ghana Jollof with Chicken', 'Ever heard of the jollof war? This meal is the famous champion of Ghana. A rice dish filled with so much flavor and culture. ', 50.00, 'jollof.jpg'),
(3, 4, 'Waakye', 'Waakye, another staple dish in Ghana. This delicious meal is mostly paired with garri, salad, spaghetti, egg, fish, meat, chicken and wele with the sauces being shito and tomato stew. The pairings don\'t always have to be t', 70.00, 'waakye.jpg'),
(4, 1, 'Fufu with assorted meat soup', 'Fufu a major staple dish in Ghana. This dish is mostly popular among the Akan tribe. It is paired with different soups such as light soup, palmnut soup, groundout soup,etc. ', 80.00, 'fufu.jpg'),
(5, 2, 'Ga Kenkey ', 'Ga kenkey known natively as \"kormi\" is a meal which originates from the Ga tribe. They mostly pair this meal with two sauces: red pepper and black pepper sauce known as shito and for proteins: fish, shrimps and octopus;', 60.00, 'kenkey.jpg'),
(6, 2, 'Banku with Tilapia', 'Banku a dish native to the Ewe tribe in Ghana. This meal is mostly paired with okro soup or grilled tilapia with pepper', 100.00, 'banku.jpg'),
(7, 2, 'Crispy Chicken Strips', 'Fried chicken strips, served with special honey mustard sauce.', 45.00, '606d74f6ecbbb.jpg'),
(8, 2, 'Lemon Grilled Chicken And Pasta', 'Marinated rosemary grilled chicken breast served with mashed potatoes and your choice of pasta.', 110.00, '606d752a209c3.jpg'),
(9, 3, 'Vegetable Fried Rice', 'Chinese rice wok with cabbage, beans, carrots, and spring onions.', 90.00, '606d7575798fb.jpg'),
(10, 3, 'Prawn Crackers', '12 pieces deep-fried prawn crackers', 45.00, '606d75a7e21ec.jpg'),
(11, 3, 'Spring Rolls', 'Lightly seasoned shredded cabbage, onion and carrots, wrapped in house made spring roll wrappers, deep fried to golden brown.', 60.00, '606d75ce105d0.jpg'),
(12, 3, 'Manchurian Chicken', 'Chicken pieces slow cooked with spring onions in our house made manchurian style sauce.', 110.00, '606d7600dc54c.jpg'),
(13, 4, ' Buffalo Wings', 'Fried chicken wings tossed in spicy Buffalo sauce served with crisp celery sticks and Blue cheese dip.', 110.00, '606d765f69a19.jpg'),
(14, 4, 'Mac N Cheese Bites', 'Served with our traditional spicy queso and marinara sauce.', 45.00, '606d768a1b2a1.jpg'),
(15, 4, 'Signature Potato Twisters', 'Spiral sliced potatoes, topped with our traditional spicy queso, Monterey Jack cheese, pico de gallo, sour cream and fresh cilantro.', 60.00, '606d76ad0c0cb.jpg'),
(16, 4, 'Meatballs Penne Pasta', 'Garlic-herb beef meatballs tossed in our house-made marinara sauce and penne pasta topped with fresh parsley.', 60.00, '606d76eedbb99.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(1, 1, 'The Hut Ghanaian Eatery', 'thehutghana@mail.com', '+233207228492', 'www.thehutghana.com', '8am', '11pm', 'mon-sun', '67 T-Poly Pipeano Road, Takoradi', 'hut.jpg', '2024-05-14 08:47:45'),
(2, 2, 'Eats Tavern', 'eatav@gmail.com', '0557426406', 'www.eatstaverngh.com', '11am', '2am', 'Mon-Sat', 'Queen of Peace, Anaji-Takoradi', 'eats.jpg', '2024-05-14 08:52:03'),
(3, 3, 'Nana\'s Imperial Chinese Restaurant', 'nanimp@mail.com', '1458745855', 'www.nanimperial.com', '9am', '10pm', 'mon-sat', 'Airport Ridge, Takoradi', 'imperial.jpg', '2024-05-14 09:03:03'),
(4, 4, 'Westside Bar & Grill', 'wbg@mail.com', '6545687458', 'www.wbg.com', '7am', '8pm', 'mon-sat', 'No.9 Effiakuma, Takoradi', 'continental.jpg', '2024-05-14 09:00:01');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Ghanaian', '2024-05-14 09:01:21'),
(2, 'Local & Continental', '2024-05-14 09:02:11'),
(3, 'Chinese', '2021-04-07 08:45:25'),
(4, 'Continental', '2024-05-14 09:02:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(9, '_just.seyram_', 'Kofi', 'Agyare', 'kofiobuomagyare@gmail.com', '0270063335', '1f6f02bae63dceff3094d6c5a2b3bcbe', 'C3 COASTAL ESTATES', 1, '2024-05-13 14:24:30');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
