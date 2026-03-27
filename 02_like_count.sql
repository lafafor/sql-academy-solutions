-- Задача: имена, заканчивающиеся на "man"
SELECT name FROM Passenger WHERE name LIKE '%man';
-- Задача: количество рейсов на TU-134
SELECT COUNT(*) AS count FROM Trip WHERE plane = 'TU-134';
