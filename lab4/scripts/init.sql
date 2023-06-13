-- Создание таблиц
CREATE TABLE table1 (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  age INT
);

CREATE TABLE table2 (
  id SERIAL PRIMARY KEY,
  city VARCHAR(50),
  country VARCHAR(50)
);

-- Вставка данных в первую таблицу
INSERT INTO table1 (name, age) VALUES
  ('John', 25),
  ('Alice', 30),
  ('Bob', 35),
  ('Lisa', 28),
  ('Michael', 42);

-- Вставка данных во вторую таблицу
INSERT INTO table2 (city, country) VALUES
  ('New York', 'USA'),
  ('London', 'UK'),
  ('Paris', 'France'),
  ('Berlin', 'Germany'),
  ('Tokyo', 'Japan');

-- Открытие первой клиентской сессии
BEGIN;
UPDATE table1 SET age = 26 WHERE name = 'John';
INSERT INTO table1 (name, age) VALUES ('Kate', 31);
COMMIT;

-- Открытие второй клиентской сессии
BEGIN;
UPDATE table2 SET country = 'United Kingdom' WHERE city = 'London';
INSERT INTO table2 (city, country) VALUES ('Sydney', 'Australia');
COMMIT;

