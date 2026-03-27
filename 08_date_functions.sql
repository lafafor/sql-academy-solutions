-- Задача: вылеты с 10 до 14 часов 1 января 1900
SELECT *
FROM Trip
WHERE time_out BETWEEN '1900-01-01 10:00:00' AND '1900-01-01 14:00:00';

-- Задача: средний возраст пассажиров (на сегодня)
SELECT AVG(TIMESTAMPDIFF(YEAR, birthday, CURDATE())) AS age
FROM Passenger;
