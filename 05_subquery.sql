-- Задача: пассажиры с самым длинным именем
SELECT name
FROM Passenger
WHERE LENGTH(name) = (SELECT MAX(LENGTH(name)) FROM Passenger);
