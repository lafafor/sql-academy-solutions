-- Задача: количество различных кабинетов, использованных 2 сентября 2019
SELECT COUNT(DISTINCT classroom) AS count
FROM Schedule
WHERE date = '2019-09-02';
