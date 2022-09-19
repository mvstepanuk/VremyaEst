-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Сен 19 2022 г., 15:13
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `vremyaest`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id_categ` int NOT NULL,
  `name_categ` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `price_list`
--

CREATE TABLE `price_list` (
  `id_dish` int NOT NULL,
  `name_dish` varchar(30) NOT NULL,
  `price_dish` decimal(6,2) NOT NULL,
  `categ_dish` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `price_list`
--

INSERT INTO `price_list` (`id_dish`, `name_dish`, `price_dish`, `categ_dish`) VALUES
(1, 'Салат из моркови с яйцом', '55.00', 1),
(3, 'Салат \"Оливье\"', '120.00', 1),
(6, 'Крем-суп грибной', '85.00', 2),
(8, 'Бульон куриный с лапшой', '85.00', 2),
(9, 'Бефстроганов из говядины с гар', '290.00', 3),
(12, 'Поджарка из куры', '170.00', 3),
(13, 'Рыба, запеченная с грибами', '175.00', 3),
(14, 'Булочка сдобная с изюмом', '50.00', 4),
(15, 'Пирожок с рисом и яйцом', '55.00', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `login` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `isadmin` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_categ`);

--
-- Индексы таблицы `price_list`
--
ALTER TABLE `price_list`
  ADD PRIMARY KEY (`id_dish`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`,`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id_categ` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `price_list`
--
ALTER TABLE `price_list`
  MODIFY `id_dish` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
