-- UPDATE muuttaa taulun rivien sis�lt�j�. SET-osassa annetaan
-- muutettavat sarakkeet ja niiden uudet arvot, jotka voidaan
-- hakea my�s alikyselyn avulla. WHERE-osassa valitaan ne rivit,
-- joihin muutos kohdistuu.
-- esimerkiksi:

UPDATE levy
SET artisti = 'Artisti 9', levynNimi = '999', genre = 'Jokugenre', formaatti = 'LP', kuntoluokitus = 'M', hinta = 99.99, email = 'myyja9@email.com'
WHERE id = 1;