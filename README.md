# SQL Academy — мои решения

Прорешал более 50 задач на платформе [SQL Academy](https://sql-academy.org).  
Здесь собраны мои решения с комментариями, которые показывают понимание:

- SELECT, WHERE, LIKE
- JOIN (INNER, LEFT)
- GROUP BY, HAVING, агрегатные функции
- Подзапросы
- Работа с датами (BETWEEN, TIMEDIFF, YEAR, MONTH)
- UPDATE, DELETE, CASE

---

## Примеры запросов

### 1. Пассажиры с максимальной длиной имени

SQL
SELECT name
FROM Passenger
WHERE LENGTH(name) = (SELECT MAX(LENGTH(name)) FROM Passenger);

### 2. Количество рейсов на TU-134
SQL
SELECT COUNT(*) AS count
FROM Trip
WHERE plane = 'TU-134';

### 3. Самые дорогие деликатесы
SQL
SELECT good_name, unit_price
FROM Goods
INNER JOIN GoodTypes ON Goods.type = GoodTypes.good_type_id
WHERE GoodTypes.good_type_name = 'delicacies'
ORDER BY unit_price DESC
LIMIT 1;
### 4. Пассажиры, летавшие в Москву на TU-134
SQL 
SELECT DISTINCT Passenger.name
FROM Passenger
INNER JOIN Pass_in_trip ON Passenger.id = Pass_in_trip.passenger
INNER JOIN Trip ON Pass_in_trip.trip = Trip.id
WHERE Trip.plane = 'TU-134' AND Trip.town_to = 'Moscow';
### 5. Количество пассажиров на каждом рейсе (включая рейсы без пассажиров)
SQL
SELECT Trip.id, COUNT(Pass_in_trip.trip) AS count
FROM Trip
LEFT JOIN Pass_in_trip ON Trip.id = Pass_in_trip.trip
GROUP BY Trip.id;
### Как использовать
Каждый файл в репозитории — это отдельная задача с комментарием условия и решением.
Запросы проверялись в MySQL 8.1.
### Связаться со мной:
Email: egor262005s@gmail.com
Telegram: @Lafafor
