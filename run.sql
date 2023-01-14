--Перевірка роботи функції
SELECT remove_result(9);

--Перевірка роботи процедури
CALL add_driver(7, 'bourdais', '', 'BOU', 'S̩bastien', 'Bourdais', '28/02/1979', 'French', 'http://en.wikipedia.org/wiki/S%C3%A9bastien_Bourdais');
SELECT * FROM pizza;

--перевірка трігера
DELETE FROM drivers WHERE driverId.id=2;
SELECT * FROM drivers;
SELECT * FROM results;