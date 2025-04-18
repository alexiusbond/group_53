/* Создание новой таблицы - сотрудники */
CREATE TABLE employees (
    id         INTEGER       PRIMARY KEY AUTOINCREMENT,
    full_name  VARCHAR (200) NOT NULL,
    salary     FLOAT         NOT NULL
                             DEFAULT 0.0,
    hobby      TEXT          DEFAULT NULL,
    birth_date DATE          NOT NULL,
    is_married BOOLEAN       DEFAULT FALSE
);


/* Добавление 1 записи в таблицу - сотрудники */
INSERT INTO employees (full_name, salary, hobby, birth_date, is_married)
VALUES ('Mark Daniels', 1500.0, 'Football', '1999-01-02', FALSE);

/* Добавление нескольких записей в таблицу - сотрудники */
INSERT INTO employees (full_name, salary, hobby, birth_date, is_married)
VALUES 
('Alex Brilliant', 2300.5, NULL, '1989-12-31', TRUE),
('Diana Julls', 1800.0, 'Programming', '2005-01-22', TRUE),
('Michael Corse', 1800.0, 'Football', '2001-09-17', TRUE),
('Jack Moris', 2100.2, 'Programming', '2001-07-12', TRUE),
('Viola Manilson', 1750.82, NULL, '1991-03-01', FALSE),
('Joanna Moris', 1000.0, 'Football', '2004-04-13', FALSE),
('Peter Parker', 2000.0, 'Programming', '2002-11-28', FALSE),
('Paula Parkerson', 800.09, NULL, '2001-11-28', TRUE),
('George Newel', 1320.0, 'Programming', '1981-01-24', TRUE),
('Miranda Alistoun', 2500.55, 'Football', '1997-12-22', FALSE),
('Valeria Hillton', 2000, 'Football', '1977-10-28', TRUE),
('Jannet Miler', 2100.9, 'Programming', '1997-02-02', TRUE),
('William Tokenson', 1500, NULL, '1999-12-12', FALSE),
('Shanty Morani', 1200.6, NULL, '1989-08-13', FALSE),
('Fiona Giordano', 900.12, 'Football', '1977-01-15', TRUE);

/* Выборка всех записей из таблицы - сотрудники */
SELECT * FROM employees;

/* Выборка записей по условию из таблицы - сотрудники */
SELECT * FROM employees WHERE salary >= 2000;

/* Изменение записи в таблице - сотрудники */
UPDATE employees SET salary = 2450, is_married = FALSE where id = 2;

/* Удаление записи из таблицы - сотрудники */
DELETE FROM employees where id = 2;

/* Выборка определенных колонок и ALIAS из таблицы - сотрудники */
SELECT full_name, salary, round(salary + salary * 0.05, 2) as with_bonus FROM employees;

/* Выборка записей по условию из таблицы - сотрудники 
Логические операторы AND, OR */
SELECT * FROM employees WHERE salary < 2000 AND hobby != 'Programming' OR id = 9;

/* Выборка записей по условию из таблицы - сотрудники 
Оператор IS (Используется для определения пуста ли ячейка) */
SELECT * FROM employees WHERE hobby IS NULL;

/* Выборка записей по условию из таблицы - сотрудники 
Оператор BETWEEN (Используется числовых диапозонов или диапозонов даты) */
SELECT * FROM employees WHERE id BETWEEN 1 AND 5;
SELECT * FROM employees WHERE birth_date BETWEEN '2000-01-01' AND DATE();

/* Выборка записей по условию из таблицы - сотрудники 
Оператор IN (Используется для определения равенства в наборе данных) */
SELECT * FROM employees WHERE id IN (2,6,9,12);

/* Выборка записей по условию из таблицы - сотрудники 
Оператор отрицания NOT (Логический оператор - IS NOT NULL / NOT IN / NOT BETWEEN) */
SELECT * FROM employees WHERE hobby IS NOT NULL;
SELECT * FROM employees WHERE id NOT IN (2,6,9,12);
SELECT * FROM employees WHERE birth_date NOT BETWEEN '2000-01-01' AND DATE();

/* Выборка записей по условию из таблицы - сотрудники 
Оператор LIKE (Используется для поиска по тексту) */
SELECT * FROM employees WHERE full_name LIKE 'V%';
SELECT * FROM employees WHERE full_name LIKE '%on';
SELECT * FROM employees WHERE full_name LIKE '%ar%';
SELECT * FROM employees WHERE full_name LIKE '_i%';

/* Выборка записей из таблицы - сотрудники 
Оператор DISTINCT (Используется выборки неповторяющихся значений) */ 
SELECT DISTINCT(hobby) FROM employees;

/* Выборка записей из таблицы - сотрудники 
Функция strftime высчитывание возраста сотрудника */ 
SELECT full_name,
       strftime('%Y', date() ) - strftime('%Y', birth_date) AS age
  FROM employees;


/* Выборка записей из таблицы - сотрудники 
Оператор условная конструкция CASE */ 
SELECT id, full_name, CASE WHEN is_married == 0 THEN 'single' ELSE 'married' END as martial_status FROM employees;

/* Выборка записей из таблицы - сотрудники 
Сортировка данных по одной колонке ORDER BY column_name ASC / DESC */ 
SELECT * FROM employees ORDER BY salary;
SELECT * FROM employees ORDER BY full_name DESC;

/* Выборка записей из таблицы - сотрудники 
Сортировка данных по уровням ORDER BY column_name1 ASC / DESC, column_name2 ASC / DESC */ 
SELECT * FROM employees ORDER BY is_married, salary DESC;


