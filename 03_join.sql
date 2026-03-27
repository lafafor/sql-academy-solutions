-- Задача: компании, летавшие на Boeing
SELECT DISTINCT Company.name
FROM Company
INNER JOIN Trip ON Company.id = Trip.company
WHERE Trip.plane = 'Boeing';

-- Задача: пассажиры, летевшие в Москву на TU-134
SELECT DISTINCT Passenger.name
FROM Passenger
INNER JOIN Pass_in_trip ON Passenger.id = Pass_in_trip.passenger
INNER JOIN Trip ON Pass_in_trip.trip = Trip.id
WHERE Trip.plane = 'TU-134' AND Trip.town_to = 'Moscow';
