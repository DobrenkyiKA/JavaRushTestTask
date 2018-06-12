#DROP DATABASE IF EXISTS test;
CREATE DATABASE IF NOT EXISTS test CHARACTER SET utf8 COLLATE utf8_general_ci;

USE test;

DROP TABLE IF EXISTS book;
CREATE TABLE book
(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  title VARCHAR(100) NOT NULL,
  description VARCHAR(255) NOT NULL,
  author VARCHAR(100) NOT NULL,
  isbn VARCHAR(20) NOT NULL,
  printYear INT NOT NULL,
  readAlready tinyint(4) NOT NULL DEFAULT 0
)
  ENGINE = innoDB
  DEFAULT CHARACTER SET = utf8
;

INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (1, 'Информатика: базовый курс', 'Вводный курс информатики', 'Акулов О.А.', '978-1-4302-6151-3', 2004, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (2, '1001 задача по физике', 'Задачник по физике', 'Гельфгат И.М.', '388-7-4302-8532-2', 1999, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (4, '1001 задача по химии', 'Задачник по химии', 'Акулов О.А.', '378-3-3738-3889-7', 1989, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (5, 'Химия 10: органическая химия', 'Учебник по химии для 10 класса', 'Домбровский А.В.', '837-1-3783-3893-4', 1999, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (6, 'Химия в действии', 'Продвинутый курс химии', 'Холин Ю.В.', '377-2-4302-389-2', 1995, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (7, 'Биология для подготовительного отделения', 'Подготовительных курс по биологии', 'Ковалев Н.Е.', '833-7-4302-6151-7', 1991, 1);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (8, 'Проблемы общей психологии', 'Информативно метадическое пособие', 'Выготский Л.С.', '437-3-2789-9528-3', 1985, 1);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (9, 'Социальная психология', 'Курс психологии для студентов ВУЗов', 'Андреева Г.М.', '372-8-3884-3892-9', 1982, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (10, 'Толковый словарь русского языка', 'Толковый словарь по русскому языку', 'Даль В.И.', '577-2-4302-3795-7', 1980, 1);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (11, 'Английский язык (3 класс)', 'Английский язык для учащихся третьих классов', 'Богородицкая В.Ж.', '346-8-4302-6151-4', 1973, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (12, 'Горе от ума', 'Психологический триллер', 'Грибоедов А.С.', '978-2-4302-6151-3', 2005, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (13, 'Властителям и судьям', 'Литература для легкого чтения', 'Державин Г.Р.', '363-7-3788-3334-3', 2004, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (14, 'Обломов', 'Худ. лит.', 'Гончаров И.А.', '634-1-8383-3475-3', 1999, 1);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (15, 'Анна Снегина', 'Художественная литература', 'Есенин С.А.', '878-7-5453-2347-1', 1989, 1);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (16, 'Информатика: базовый курс', 'Вводный курс информатики', 'Акулов О.А.', '978-1-4302-6151-3', 2004, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (17, '1001 задача по физике', 'Задачник по физике', 'Гельфгат И.М.', '388-7-4302-8532-2', 1999, 1);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (18, '1001 задача по химии', 'Задачник по химии', 'Акулов О.А.', '378-3-3738-3889-7', 1989, 1);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (19, 'Химия 10: органическая химия', 'Учебник по химии для 10 класса', 'Домбровский А.В.', '837-1-3783-3893-4', 1999, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (20, 'Химия в действии', 'Продвинутый курс химии', 'Холин Ю.В.', '377-2-4302-389-2', 1995, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (21, 'Биология для подготовительного отделения', 'Подготовительных курс по биологии', 'Ковалев Н.Е.', '833-7-4302-6151-7', 1991, 1);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (22, 'Проблемы общей психологии', 'Информативно метадическое пособие', 'Выготский Л.С.', '437-3-2789-9528-3', 1985, 1);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (23, 'Социальная психология', 'Курс психологии для студентов ВУЗов', 'Андреева Г.М.', '372-8-3884-3892-9', 1982, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (24, 'Толковый словарь русского языка', 'Толковый словарь по русскому языку', 'Даль В.И.', '577-2-4302-3795-7', 1980, 1);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (25, 'Английский язык (3 класс)', 'Английский язык для учащихся третьих классов', 'Богородицкая В.Ж.', '346-8-4302-6151-4', 1973, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (26, 'Горе от ума', 'Психологический триллер', 'Грибоедов А.С.', '978-2-4302-6151-3', 2005, 1);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (27, 'Властителям и судьям', 'Литература для легкого чтения', 'Державин Г.Р.', '363-7-3788-3334-3', 2004, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (28, 'Обломов', 'Худ. лит.', 'Гончаров И.А.', '634-1-8383-3475-3', 1999, 1);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (29, 'Анна Снегина', 'Художественная литература', 'Есенин С.А.', '878-7-5453-2347-1', 1989, 0);
