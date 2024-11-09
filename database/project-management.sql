-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2024 at 09:28 AM
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
-- Database: `project-management`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2024_11_08_180207_create_products_table', 1),
(2, '2024_11_08_180440_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_id`, `name`, `description`, `price`, `stock`, `image`, `created_at`, `updated_at`) VALUES
(1, '1001', 'Camera', 'Capture Every Moment in Stunning Detail\r\n\r\nExperience the art of photography like never before with this cutting-edge [Brand/Model Name] Camera. Designed for professionals and enthusiasts alike, it combines advanced technology with user-friendly features, ensuring every shot is picture-perfect.\r\n\r\nKey Features:\r\nCrystal Clear Images: Boasts a [XX] MP sensor for ultra-high resolution photos and videos.\r\n4K Video Recording: Capture life\'s motion in cinematic detail.\r\nOptical Zoom: Achieve up to [XX]x zoom for breathtaking close-ups without compromising quality.\r\nLow-Light Performance: With an advanced ISO range, shoot stunning images even in dim conditions.\r\nCompact & Lightweight: Perfect for travel, vlogging, or everyday photography.', 1000.00, 5, 'products/S7XPN4eDmYC9L1J5BpiFB92qWO0jbfKCzCvgtVS4.jpg', '2024-11-08 13:24:33', '2024-11-08 14:51:34'),
(2, '1002', 'Body Spary', 'Body Spray Description:\r\n\r\nFeel fresh and confident all day with this invigorating body spray. Designed to keep you smelling great, its lightweight formula provides a long-lasting fragrance that’s never overpowering. Perfect for everyday use, it offers a refreshing burst of scent that complements your style while leaving your skin feeling clean and energized. Ideal for both casual outings and special occasions, this body spray is your go-to for instant refreshment.', 56.00, 33, 'products/OXPmrsBlUq0M7a26Q7f1xoX5LJPLntb2ABeHwh1d.jpg', '2024-11-08 13:41:03', '2024-11-08 14:51:08'),
(4, '1003', 'Water Pot', 'Introducing the Premium Water Pot – your perfect companion for hydration needs, whether at home, in the office, or outdoors.\r\n\r\nHigh-Quality Material: Made from durable, BPA-free plastic/stainless steel/ceramic (depending on product type), ensuring safety and longevity.\r\nElegant Design: Stylish yet functional, blending seamlessly with modern or traditional décor.\r\nLarge Capacity: Holds up to [insert capacity, e.g., 2 liters], perfect for serving family or guests.\r\nEasy to Use: Ergonomic handle and drip-free spout for effortless pouring.\r\nTemperature Retention: Insulated options keep water cool or hot for hours (if applicable).\r\nEco-Friendly: Reusable and designed to reduce single-use plastic consumption.\r\nVersatile Usage: Suitable for water, juices, or other beverages.\r\nPortable: Lightweight and compact, ideal for travel or picnics.\r\nStay hydrated in style with the Premium Water Pot – where practicality meets sophistication.', 15.00, 75, 'products/LqVi9MUGddYjzNszuojqdr4lmSfEPrCDNuOEjBqC.jpg', '2024-11-08 15:43:09', '2024-11-08 15:43:09'),
(5, '1004', 'Stylish Hand Watch', 'Discover timeless elegance with our Stylish Hand Watch, the perfect blend of sophistication and functionality.\r\n\r\nPremium Build: Crafted with high-quality stainless steel/alloy/leather for durability and a luxurious feel.\r\nElegant Design: Sleek, minimalist dial with precision detailing, suitable for both formal and casual occasions.\r\nAdvanced Features: Includes [e.g., chronograph, water resistance up to 50m, date display, luminous hands].\r\nComfortable Fit: Adjustable strap/band designed for all-day wear without compromising comfort.\r\nAccurate Timekeeping: Powered by [Quartz/Mechanical/Automatic movement] for precision and reliability.\r\nVersatile Styles: Available in a variety of colors and finishes to match your personality.\r\nGift-Ready Packaging: Comes in an elegant box, making it an ideal gift for loved ones.\r\nElevate your everyday look with the Stylish Hand Watch – a timeless accessory for every occasion.', 500.00, 5, 'products/svb1p0AI4BBu8wcfKbchgMNIqUpRzAI9HAtXKWMW.jpg', '2024-11-08 15:44:33', '2024-11-08 15:44:33'),
(6, '1005', 'Luxurious Body Oil', 'Experience ultimate nourishment and hydration with our Luxurious Body Oil, designed to leave your skin feeling silky smooth and radiant.\r\n\r\nDeep Moisturization: Enriched with natural oils like coconut, almond, or argan oil to lock in moisture and prevent dryness.\r\nLightweight Formula: Non-greasy and fast-absorbing, perfect for daily use.\r\nSoothing Fragrance: Infused with calming essential oils for a subtle, relaxing scent.\r\nSkin Rejuvenation: Rich in vitamins and antioxidants to promote healthy, glowing skin.\r\nMulti-Purpose Use: Ideal for massages, after-bath hydration, or as a treatment for rough areas like elbows and heels.\r\n100% Natural Ingredients: Free from parabens, sulfates, and harmful chemicals.\r\nFor All Skin Types: Gentle enough for sensitive skin, providing a natural glow for everyone.\r\nPamper your skin with the Luxurious Body Oil – a daily indulgence for soft, nourished, and radiant skin.', 99.99, 30, 'products/VWXVaSgVQof4lpKoWG3pZOVNtRxpHB95DZAzocul.jpg', '2024-11-08 15:46:02', '2024-11-08 15:46:02'),
(7, '1006', 'High-Speed Memory Card', 'Store, transfer, and access your data with ease using our High-Speed Memory Card, designed to meet all your storage needs.\r\n\r\nAmple Storage: Available in various capacities, from 16GB to 1TB, perfect for photos, videos, music, and apps.\r\nHigh-Speed Performance: Supports read and write speeds up to [insert speed, e.g., 150MB/s], ensuring quick data transfer and smooth playback.\r\nWide Compatibility: Works seamlessly with smartphones, cameras, tablets, laptops, and more.\r\nDurable and Reliable: Waterproof, shockproof, temperature-resistant, and X-ray proof for long-lasting performance.\r\nClass-Leading Standards: Certified [Class 10, UHS-I/UHS-II, or V30/V60/V90], suitable for Full HD and 4K video recording.\r\nPlug-and-Play: Easy to use and ready right out of the box, with no additional software required.\r\nCompact Design: Ultra-small and lightweight, making it easy to carry anywhere.\r\nUpgrade your digital storage experience with the High-Speed Memory Card – the ultimate solution for secure and efficient data management.', 30.00, 230, 'products/x9dWz0uzdIX9GjP14rB3ZJVjgJ7kZLLhAWUQt6UT.jpg', '2024-11-08 15:47:18', '2024-11-08 15:47:18');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('hFPnmi58LBvFnlc3bnUBqEEF3ul6Z5Ad2TvXYNAN', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:132.0) Gecko/20100101 Firefox/132.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiajdjVXYyQ3VveWI5aTBIY0lVWnZ0RFpCeTUwOGZNWkVDTEhwbkpwZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0cy82Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1731103262);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_product_id_unique` (`product_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
