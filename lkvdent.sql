-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июл 02 2019 г., 06:37
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

-- --------------------------------------------------------

--
-- Структура таблицы `tb_cards_tree`
--

CREATE TABLE `tb_cards_tree` (
  `id` int(10) UNSIGNED NOT NULL,
  `card_id` int(10) UNSIGNED NOT NULL,
  `tree_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(1, 'Петровна ты где', 1, '2019-06-19 03:10:20'),
(2, 'Петрушкин Ф.X.', 0, '2019-06-19 03:00:00'),
(3, 'Митрофанов С.Д.', 1, '2019-06-21 06:26:21'),
(4, 'Штельман А.А.', 1, '2019-06-21 09:57:45'),
(5, 'Петровна ты где', 1, '2019-06-27 15:19:33');

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
(4, 'Тымко', 'Иван', '', '0000-00-00', 1, '', 'г. Кокшетау', '', '', '1112223344', '', '', '2019-07-02 04:36:51');

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
(6, NULL, 'Заглушка', 0, 0),
(7, 1, 'Заболевание зубов', 0, 1),
(8, 7, 'Боль', 0, 1),
(9, 8, 'Кратковременная боль от раздражителей', 0, 1),
(10, 8, 'Длительная самопроизвольная боль', 0, 1),
(16, 8, 'текст шаблона', 0, 1),
(17, 9, 'Введите текст шаблона', 0, 1),
(18, 7, 'Введите текст шаблона', 0, 1),
(19, 7, 'Введите текст шаблона', 0, 1),
(20, 18, 'Введите шаблона', 0, 1),
(21, 18, 'текст шаблона', 0, 1);

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

    -- Изменение пути у всего поддерева.
    UPDATE tb_tree_path
        SET path = REPLACE(path, old_path, new_path)
        WHERE path LIKE CONCAT(old_path, '%');
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
(7, '/1/7/'),
(18, '/1/7/18/'),
(20, '/1/7/18/20/'),
(21, '/1/7/18/21/'),
(19, '/1/7/19/'),
(8, '/1/7/8/'),
(10, '/1/7/8/10/'),
(16, '/1/7/8/16/'),
(9, '/1/7/8/9/'),
(17, '/1/7/8/9/17/'),
(2, '/2/'),
(3, '/3/'),
(4, '/4/'),
(5, '/5/'),
(6, '/6/');

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
-- Индексы таблицы `tb_cards_tree`
--
ALTER TABLE `tb_cards_tree`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tb_cards_tree`
--
ALTER TABLE `tb_cards_tree`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tb_employee`
--
ALTER TABLE `tb_employee`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `tb_patient`
--
ALTER TABLE `tb_patient`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `tb_tree`
--
ALTER TABLE `tb_tree`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
-- Ограничения внешнего ключа таблицы `tb_cards_tree`
--
ALTER TABLE `tb_cards_tree`
  ADD CONSTRAINT `tb_cards_tree_ibfk_card_id` FOREIGN KEY (`card_id`) REFERENCES `tb_card` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_cards_tree_ibfk_tree_id` FOREIGN KEY (`tree_id`) REFERENCES `tb_tree` (`id`) ON DELETE CASCADE;

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
