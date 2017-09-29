-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 29 2017 г., 12:13
-- Версия сервера: 5.6.37
-- Версия PHP: 7.0.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `gallery_bd`
--

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `albiom_id` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `name`, `img`, `created_at`, `updated_at`, `albiom_id`) VALUES
(6, 'животный мир', '28.jpg', '2017-09-27 02:36:43', '2017-09-27 02:36:43', 5),
(7, 'хомяк', 'homiak.jpg', '2017-09-27 07:04:55', '2017-09-27 07:04:55', 5),
(8, 'ufc', 'crop.jpg', '2017-09-27 07:05:51', '2017-09-27 07:05:51', 1),
(9, 'bugatti veyron', '5162bf3a94a656f7bf000003.jpg', '2017-09-27 07:06:44', '2017-09-27 07:06:44', 6),
(10, 'борьба', 'Karelin.jpg', '2017-09-27 07:34:21', '2017-09-27 07:34:21', 1),
(11, 'горы', '67f65023580679e39a7c14f52bf1af23_XL.jpg', '2017-09-27 07:34:42', '2017-09-27 07:34:42', 4),
(12, 'mustang', '2011-chevrolet-camaro-hotwheelsconcept-167.jpg', '2017-09-27 07:35:09', '2017-09-27 07:35:09', 6),
(13, 'футбол', 'head_0.jpg', '2017-09-27 07:35:39', '2017-09-27 07:35:39', 1),
(14, 'картина', '20557_foto_2_03.jpg', '2017-09-27 07:40:14', '2017-09-27 07:40:14', 7),
(15, 'исскуство', '01135.jpg', '2017-09-27 07:42:08', '2017-09-27 07:42:08', 7),
(16, 'кот', 'by_qinni.jpg', '2017-09-27 07:42:41', '2017-09-27 07:42:41', 7),
(17, 'зимние горы', '51_pic.jpg', '2017-09-27 07:54:04', '2017-09-27 07:54:04', 8),
(18, 'экстрим', '1-14-730x487.jpg', '2017-09-27 07:54:52', '2017-09-27 07:54:52', 8),
(19, 'вело экстрим', 'ekstrim-velosipedi.126.b.jpg', '2017-09-27 07:55:31', '2017-09-27 07:55:31', 8),
(20, 'скалолазание', 'skalolaz_ekstrim_siluet_podm_skaly_trudnosti_zakat_79975_602x339.jpg', '2017-09-27 07:56:09', '2017-09-27 07:56:09', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_09_21_164549_gallery_db', 1),
(4, '2017_09_22_145059_create_images_table', 1),
(5, '2017_09_22_151517_change_images_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `pictures`
--

CREATE TABLE `pictures` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `calendari` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pictures`
--

INSERT INTO `pictures` (`id`, `name`, `img`, `text`, `calendari`, `created_at`, `updated_at`) VALUES
(1, 'Спорт', 'crop.jpg', 'В данном альбоме вы увидите картинки про спорт', '22-09-2017', '2017-09-22 09:34:05', '2017-09-22 09:34:05'),
(4, 'Туризм', 'turizm.jpg', 'Картинки по туризму', '02-09-2017', '2017-09-25 09:31:05', '2017-09-25 09:31:05'),
(5, 'Животные', 'lion-662830_960_720.jpg', 'Картинки про животных', '27-09-2017', '2017-09-27 02:09:07', '2017-09-27 02:09:07'),
(6, 'Авто', '2011-chevrolet-camaro-hotwheelsconcept-167.jpg', 'Картинки про авто', '01-09-2017', '2017-09-27 02:37:49', '2017-09-27 02:37:49'),
(7, 'Искусство', 'isskustvo.jpg', 'картинки про искусство', '30-08-2017', '2017-09-27 07:36:48', '2017-09-27 07:36:48'),
(8, 'Экстрим', 'images.jpg', 'Картинки про экстрим', '21-09-2017', '2017-09-27 07:52:53', '2017-09-27 07:52:53'),
(9, 'Происшествие', '62bd74e5b08e17fae456de916d7c6691.jpg', 'картинки про происшествие', '30-09-2017', '2017-09-27 08:07:33', '2017-09-27 08:07:33');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'rus', 'rus@mail.ru', '$2y$10$OuGF8O8W.hwpCAPukMK7nOlnRbTsaN82aT7fYd0VY7i58ZNjspQzm', 'ydcCvDt452MHLHFrIyh04Fv29NA0Zmch8yn7GTvsx7chrX7fl96lQfC4OBb8', '2017-09-26 09:47:16', '2017-09-26 09:47:16');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_albiom_id_foreign` (`albiom_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_albiom_id_foreign` FOREIGN KEY (`albiom_id`) REFERENCES `pictures` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
