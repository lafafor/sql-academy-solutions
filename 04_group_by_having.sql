-- Задача: количество пассажиров на каждом рейсе
SELECT Trip.id, COUNT(Pass_in_trip.trip) AS count
FROM Trip
LEFT JOIN Pass_in_trip ON Trip.id = Pass_in_trip.trip
GROUP BY Trip.id;

-- Задача: пассажиры, летавшие больше 1 раза
SELECT Passenger.name, COUNT(Pass_in_trip.trip) AS flight_count
FROM Passenger
INNER JOIN Pass_in_trip ON Passenger.id = Pass_in_trip.passenger
GROUP BY Passenger.id
HAVING COUNT(Pass_in_trip.trip) > 1;
