-- testidatan syöttö

-- HUOM
-- LEVY-taulun luonnissa käytetty int id arvona auto_increment ominaisuutta

INSERT INTO levy
(id, artisti, levynNimi, genre, formaatti, kuntoluokitus, hinta, email)
VALUES
(1, 'Artisti 1', '111', 'Pop', 'LP', 'EX+', 23.50, 'eka@email.com'),
(2, 'Artisti 2', '222', 'Disco', 'LP', 'VG+', 11.00, 'toka@email.com'),
(3, 'Artisti 3', '333', 'Rock', '12"', 'VG-', 15.00, 'kolmas@email.com'),
(4, 'Artisti 4', '444', 'Funk', '10"', 'M', 23.50, 'neljas@email.com'),
(5, 'Artisti 5', '555', 'Jazz', '7"', 'NM', 4.99, 'viides@email.com'),
(6, 'Artisti 6', '666', 'Heavy', '2LP', 'P', 0.65, 'kuudes@email.com'),
(7, 'Artisti 7', '777', 'Soul', '7"', 'NM', 9.99, 'seitsemas@email.com'),
(8, 'Artisti 8', '888', 'Rap', 'LP', 'G', 12.50, 'kahdeksas@email.com');