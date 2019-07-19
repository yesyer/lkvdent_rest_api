-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июл 19 2019 г., 06:58
-- Версия сервера: 10.1.32-MariaDB
-- Версия PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `lkvdent`
--

-- --------------------------------------------------------

--
-- Структура таблицы `tb_card`
--

CREATE TABLE `tb_card` (
  `id` int(10) UNSIGNED NOT NULL,
  `patient_id` int(10) UNSIGNED NOT NULL,
  `notes` varchar(400) NOT NULL DEFAULT '',
  `employee_id` int(10) UNSIGNED NOT NULL,
  `is_init_exam` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'флаг первичного осмотра',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tb_card`
--

INSERT INTO `tb_card` (`id`, `patient_id`, `notes`, `employee_id`, `is_init_exam`, `created`) VALUES
(2, 2, '', 3, 1, '2019-07-03 06:02:45'),
(3, 2, '', 3, 0, '2019-07-11 11:14:24'),
(6, 1, '', 1, 1, '2019-07-16 10:34:52'),
(7, 1, '', 1, 0, '2019-07-16 10:36:43'),
(8, 1, '', 1, 0, '2019-07-16 10:36:43'),
(9, 2, '', 1, 0, '2019-07-16 11:17:19');

-- --------------------------------------------------------

--
-- Структура таблицы `tb_card_tree`
--

CREATE TABLE `tb_card_tree` (
  `id` int(10) UNSIGNED NOT NULL,
  `card_id` int(10) UNSIGNED NOT NULL,
  `tree_id` int(10) UNSIGNED NOT NULL,
  `tooth` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tb_card_tree`
--

INSERT INTO `tb_card_tree` (`id`, `card_id`, `tree_id`, `tooth`) VALUES
(1, 2, 46, ''),
(2, 2, 47, ''),
(8, 6, 25, ''),
(9, 6, 26, '21:31:'),
(10, 6, 31, '28:38:'),
(11, 6, 24, ''),
(12, 9, 25, '21:22:'),
(13, 9, 26, '31:32:'),
(14, 7, 24, ''),
(15, 2, 41, ''),
(16, 2, 42, '');

-- --------------------------------------------------------

--
-- Структура таблицы `tb_employee`
--

CREATE TABLE `tb_employee` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(40) NOT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT '1',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='таблица сотрудников';

--
-- Дамп данных таблицы `tb_employee`
--

INSERT INTO `tb_employee` (`id`, `name`, `is_enable`, `created`) VALUES
(1, '(нет)', 0, '2019-06-19 03:10:20'),
(2, 'Петрушкин Ф.X.', 1, '2019-06-19 03:00:00'),
(3, 'Митрофанов С.Д.', 1, '2019-06-21 06:26:21'),
(4, 'Штельман А.А.', 1, '2019-06-21 09:57:45'),
(5, 'Петровна ты где', 1, '2019-06-27 15:19:33'),
(6, 'новая строка', 1, '2019-07-09 08:53:08'),
(7, 'новая строка 3', 1, '2019-07-09 08:54:27');

-- --------------------------------------------------------

--
-- Структура таблицы `tb_patient`
--

CREATE TABLE `tb_patient` (
  `id` int(10) UNSIGNED NOT NULL,
  `fname` varchar(40) NOT NULL,
  `name` varchar(20) NOT NULL,
  `lname` varchar(40) NOT NULL DEFAULT '',
  `birthday` date DEFAULT NULL,
  `sex` tinyint(1) NOT NULL,
  `proff` varchar(100) NOT NULL DEFAULT '',
  `address1` varchar(200) NOT NULL,
  `address2` varchar(200) NOT NULL DEFAULT '',
  `address3` varchar(200) NOT NULL DEFAULT '',
  `phone1` varchar(20) NOT NULL DEFAULT '',
  `phone2` varchar(20) NOT NULL DEFAULT '',
  `notes` varchar(400) NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='таблица пациентов';

--
-- Дамп данных таблицы `tb_patient`
--

INSERT INTO `tb_patient` (`id`, `fname`, `name`, `lname`, `birthday`, `sex`, `proff`, `address1`, `address2`, `address3`, `phone1`, `phone2`, `notes`, `created`) VALUES
(1, 'Петренко', 'Федр', 'Александрович', '2019-06-01', 1, 'Ланшафтный дизайнер', 'г. Кокшетау', 'ул. Абая', 'д. 150', '+77771112233', '+77714445566', 'Длинная строка ограничением в 400 символов', '2019-06-21 12:02:32'),
(2, 'Колько', 'Евгений', 'Яковлевич', '2019-07-01', 1, '', 'г. Кокшетау', '', '', '1112223344', '', 'null', '2019-06-24 08:37:14'),
(3, 'Тыковка', 'Иван', '', '2019-07-01', 1, '', 'г. Кокшетау', '', '', '1112223344', '', '', '2019-06-24 08:39:27'),
(4, 'Печенегов', 'Евгений', '', '2019-07-02', 1, '', 'г. Кокшетау', '', '', '1112223344', '', '', '2019-07-02 04:36:51'),
(5, 'Фадеев', 'Афанасий', 'Литвинович', '1995-07-02', 1, 'Менчендайзер', 'г. Кокшетау', '', '', '', '', '', '2019-07-02 04:41:11');

-- --------------------------------------------------------

--
-- Структура таблицы `tb_tree`
--

CREATE TABLE `tb_tree` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `content` varchar(200) NOT NULL DEFAULT '',
  `is_init_exam` tinyint(1) NOT NULL DEFAULT '0',
  `is_enable` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tb_tree`
--

INSERT INTO `tb_tree` (`id`, `parent_id`, `content`, `is_init_exam`, `is_enable`) VALUES
(1, NULL, 'Жалобы', 0, 1),
(2, NULL, 'Объективные данные', 0, 1),
(3, NULL, 'Диагноз', 0, 1),
(4, NULL, 'Лечение', 0, 1),
(5, NULL, 'Рекомендации', 0, 1),
(6, NULL, 'Предварительный осмотр', 1, 1),
(22, 1, '1.1', 0, 1),
(23, 1, '1.2', 0, 1),
(24, 1, '1.3', 0, 1),
(25, 22, '1.1.1', 0, 1),
(26, 22, '1.1.2', 0, 1),
(27, 22, '1.1.3', 0, 1),
(28, 23, '1.2.1', 0, 1),
(29, 23, '1.2.2', 0, 1),
(30, 27, '1.1.3.1', 0, 0),
(31, 27, '1.1.3.2', 0, 1),
(32, 2, '2.1', 0, 1),
(33, 2, '2.2', 0, 1),
(34, 2, '2.3', 0, 1),
(35, 6, 'Диагноз', 0, 1),
(36, 6, 'Жалобы', 0, 1),
(37, 6, 'Перенесенные и сопутствующие заболевания', 0, 1),
(38, 35, '1.1', 0, 1),
(39, 35, '1.2', 0, 1),
(40, 35, '1.3', 0, 1),
(41, 36, '2.1', 0, 1),
(42, 36, '2.2', 0, 1),
(43, 37, '3.1', 0, 1),
(44, 37, '3.2', 0, 1),
(45, 6, 'Развитие настоящего заболевания', 0, 1),
(46, 38, '1.1.1', 0, 1),
(47, 38, '1.1.2', 0, 1),
(48, 45, '4.1', 0, 1),
(49, 45, '4.2', 0, 1);

--
-- Триггеры `tb_tree`
--
DELIMITER $$
CREATE TRIGGER `tree__ai` AFTER INSERT ON `tb_tree` FOR EACH ROW BEGIN
    DECLARE new_path VARCHAR(255);

    -- Вычисление материализованного пути.
    SET new_path = CONCAT(
        IFNULL(
            (
                SELECT tp.path
                    FROM tb_tree_path tp
                    WHERE tp.id = NEW.parent_id
            ),
            '/'
        ),
        NEW.id,
        '/'
    );
    INSERT INTO tb_tree_path (id, path)
        VALUES (NEW.id, new_path);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tree__au` AFTER UPDATE ON `tb_tree` FOR EACH ROW BEGIN
    DECLARE old_path, new_path VARCHAR(255) CHARACTER SET latin1;

    SET old_path = (
        SELECT tp.path
            FROM tb_tree_path tp
            WHERE tp.id = OLD.id
    );
    SET new_path = CONCAT(
        IFNULL(
            (
                SELECT tp.path
                    FROM tb_tree_path tp
                    WHERE tp.id = NEW.parent_id
            ),
            '/'
        ),
        OLD.id,
        '/'
    );

    -- Закольцовка пути?
    IF new_path LIKE CONCAT('%/', OLD.id, '/_%') THEN
        SIGNAL SQLSTATE VALUE '42000'
            SET MESSAGE_TEXT =
                'An attempt to damage the integrity of the tree.';
    END IF;

if new_path like old_path then
    -- Изменение пути у всего поддерева.
    UPDATE tb_tree_path
        SET path = REPLACE(path, old_path, new_path)
        WHERE path LIKE CONCAT(old_path, '%');
        end if;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tree__bu` BEFORE UPDATE ON `tb_tree` FOR EACH ROW BEGIN
    -- Смена id или ссылка на самого себя как на предка?
    IF OLD.id != NEW.id OR NEW.parent_id <=> OLD.id THEN
        SIGNAL SQLSTATE VALUE '42000'
            SET MESSAGE_TEXT =
                'An attempt to damage the integrity of the tree.';
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `tb_tree_path`
--

CREATE TABLE `tb_tree_path` (
  `id` int(10) UNSIGNED NOT NULL,
  `path` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tb_tree_path`
--

INSERT INTO `tb_tree_path` (`id`, `path`) VALUES
(1, '/1/'),
(22, '/1/22/'),
(25, '/1/22/25/'),
(26, '/1/22/26/'),
(27, '/1/22/27/'),
(30, '/1/22/27/30/'),
(31, '/1/22/27/31/'),
(23, '/1/23/'),
(28, '/1/23/28/'),
(29, '/1/23/29/'),
(24, '/1/24/'),
(2, '/2/'),
(32, '/2/32/'),
(33, '/2/33/'),
(34, '/2/34/'),
(3, '/3/'),
(4, '/4/'),
(5, '/5/'),
(6, '/6/'),
(35, '/6/35/'),
(38, '/6/35/38/'),
(46, '/6/35/38/46/'),
(47, '/6/35/38/47/'),
(39, '/6/35/39/'),
(40, '/6/35/40/'),
(36, '/6/36/'),
(41, '/6/36/41/'),
(42, '/6/36/42/'),
(37, '/6/37/'),
(43, '/6/37/43/'),
(44, '/6/37/44/'),
(45, '/6/45/'),
(48, '/6/45/48/'),
(49, '/6/45/49/');

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `vw_card`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `vw_card` (
`id` int(10) unsigned
,`patient_id` int(10) unsigned
,`name` varchar(46)
,`notes` varchar(400)
,`em_name` varchar(40)
,`is_init_exam` tinyint(1)
,`created` timestamp
,`record` bigint(21)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `vw_tree`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `vw_tree` (
`id` int(10) unsigned
,`parent_id` int(10) unsigned
,`content` varchar(200)
,`is_init_exam` tinyint(1)
,`is_enable` tinyint(1)
,`path` varchar(255)
,`root` varchar(200)
,`subroot_id` bigint(10) unsigned
,`subroot` varchar(200)
);

-- --------------------------------------------------------

--
-- Структура для представления `vw_card`
--
DROP TABLE IF EXISTS `vw_card`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_card`  AS  select `cd`.`id` AS `id`,`cd`.`patient_id` AS `patient_id`,concat(`pt`.`fname`,' ',left(`pt`.`name`,1),'.',if((`pt`.`lname` = ''),'',' '),if((`pt`.`lname` = ''),'',left(`pt`.`lname`,1)),if((`pt`.`lname` = ''),'','.')) AS `name`,`cd`.`notes` AS `notes`,`em`.`name` AS `em_name`,`cd`.`is_init_exam` AS `is_init_exam`,`cd`.`created` AS `created`,(select count(`ct`.`id`) from `tb_card_tree` `ct` where (`cd`.`id` = `ct`.`card_id`)) AS `record` from ((`tb_card` `cd` join `tb_patient` `pt` on((`cd`.`patient_id` = `pt`.`id`))) join `tb_employee` `em` on((`cd`.`employee_id` = `em`.`id`))) ;

-- --------------------------------------------------------

--
-- Структура для представления `vw_tree`
--
DROP TABLE IF EXISTS `vw_tree`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_tree`  AS  select `t`.`id` AS `id`,`t`.`parent_id` AS `parent_id`,`t`.`content` AS `content`,`t`.`is_init_exam` AS `is_init_exam`,`t`.`is_enable` AS `is_enable`,`tp`.`path` AS `path`,(select `t2`.`content` from (`tb_tree` `t2` join `tb_tree_path` `tp2` on((`tp2`.`id` = `t2`.`id`))) where (`tp2`.`path` like left(`tp`.`path`,3))) AS `root`,(select `t5`.`id` from (`tb_tree` `t5` join `tb_tree_path` `tp5` on((`tp5`.`id` = `t5`.`id`))) where ((locate(`tp5`.`path`,(select `tp6`.`path` from `tb_tree_path` `tp6` where (`tp6`.`id` = `t`.`id`))) <> 0) and (`t5`.`parent_id` is not null)) order by `tp5`.`path` limit 1) AS `subroot_id`,(select `t3`.`content` from (`tb_tree` `t3` join `tb_tree_path` `tp3` on((`tp3`.`id` = `t3`.`id`))) where ((locate(`tp3`.`path`,(select `tp4`.`path` from `tb_tree_path` `tp4` where (`tp4`.`id` = `t`.`id`))) <> 0) and (`t3`.`parent_id` is not null)) order by `tp3`.`path` limit 1) AS `subroot` from (`tb_tree` `t` join `tb_tree_path` `tp` on((`tp`.`id` = `t`.`id`))) ;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `tb_card`
--
ALTER TABLE `tb_card`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Индексы таблицы `tb_card_tree`
--
ALTER TABLE `tb_card_tree`
  ADD PRIMARY KEY (`id`),
  ADD KEY `card_id` (`card_id`),
  ADD KEY `tree_id` (`tree_id`);

--
-- Индексы таблицы `tb_employee`
--
ALTER TABLE `tb_employee`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tb_patient`
--
ALTER TABLE `tb_patient`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tb_tree`
--
ALTER TABLE `tb_tree`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Индексы таблицы `tb_tree_path`
--
ALTER TABLE `tb_tree_path`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `path` (`path`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `tb_card`
--
ALTER TABLE `tb_card`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `tb_card_tree`
--
ALTER TABLE `tb_card_tree`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `tb_employee`
--
ALTER TABLE `tb_employee`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `tb_patient`
--
ALTER TABLE `tb_patient`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `tb_tree`
--
ALTER TABLE `tb_tree`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `tb_card`
--
ALTER TABLE `tb_card`
  ADD CONSTRAINT `tb_card_ibfk_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `tb_employee` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_card_ibfk_patient_id` FOREIGN KEY (`patient_id`) REFERENCES `tb_patient` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tb_card_tree`
--
ALTER TABLE `tb_card_tree`
  ADD CONSTRAINT `tb_card_tree_ibfk_card_id` FOREIGN KEY (`card_id`) REFERENCES `tb_card` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_card_tree_ibfk_tree_id` FOREIGN KEY (`tree_id`) REFERENCES `tb_tree` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tb_tree`
--
ALTER TABLE `tb_tree`
  ADD CONSTRAINT `tb_tree_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `tb_tree` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tb_tree_path`
--
ALTER TABLE `tb_tree_path`
  ADD CONSTRAINT `tb_tree_path_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tb_tree` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
