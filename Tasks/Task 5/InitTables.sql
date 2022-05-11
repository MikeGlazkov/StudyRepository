use Reviews

INSERT INTO Towns VALUES ('Korolev');
INSERT INTO Towns VALUES ('Balashiha');
INSERT INTO Towns VALUES ('Serpuhov');

INSERT INTO Streets VALUES ('Lenina', 1);
INSERT INTO Streets VALUES ('Kosmonavtov', 1);
INSERT INTO Streets VALUES ('Lenina', 2);
INSERT INTO Streets VALUES ('Truda', 2);
INSERT INTO Streets VALUES ('Pobeda', 2);
INSERT INTO Streets VALUES ('Pushkina', 3);
INSERT INTO Streets VALUES ('Razina', 3);

INSERT INTO ObjTypes VALUES ('Cafe');
INSERT INTO ObjTypes VALUES ('Gym');
INSERT INTO ObjTypes VALUES ('Store');

INSERT INTO Places VALUES ('Romashka', 1, 1);
INSERT INTO Places VALUES ('Power', 2, 2);
INSERT INTO Places VALUES ('Lutik', 1, 3);
INSERT INTO Places VALUES ('Magnit', 3, 4);
INSERT INTO Places VALUES ('Sokol', 2, 3);
INSERT INTO Places VALUES ('Magnit', 3, 6);
INSERT INTO Places VALUES ('Globus', 1, 7);
INSERT INTO Places VALUES ('Teremok', 3, 6);
INSERT INTO Places VALUES ('Globus', 3, 7);

INSERT INTO Users VALUES ('Mike', '12345678', 'mike@email.ru');
INSERT INTO Users VALUES ('Alex', '87654321', 'alex@email.ru');

INSERT INTO Info (Comment,Rate,PlaceID,UserID) VALUES ('Very well', 5, 2, 1);
INSERT INTO Info (Comment,Rate,PlaceID,UserID) VALUES ('Super', 5, 4, 1);
INSERT INTO Info (Comment,Rate,PlaceID,UserID) VALUES (NULL, 1, 6, 1);
INSERT INTO Info (Comment,Rate,PlaceID,UserID) VALUES ('Quite well', 4, 1, 2);
INSERT INTO Info (Comment,Rate,PlaceID,UserID) VALUES ('Quite well', 4, 3, 2);
INSERT INTO Info (Comment,Rate,PlaceID,UserID) VALUES ('Brilliant!!!', 5, 7, 2);
INSERT INTO Info (Comment,Rate,PlaceID,UserID) VALUES (NULL, 1, 2, 2);
INSERT INTO Info (Comment,Rate,PlaceID,UserID) VALUES (NULL, 1, 4, 2);
INSERT INTO Info (Comment,Rate,PlaceID,UserID) VALUES (NULL, 2, 6, 2);
