INSERT INTO Regissør VALUES (1, "Petyon Reed"), (2, "Tom Shadyac");
INSERT INTO Film VALUES (1, "Yes Man", 2008,1);
INSERT INTO Skuespiller VALUES (1, "Jim Carrey", 1962);
INSERT INTO SkuespillerFilm VALUES (1, 1, "Carl");

UPDATE Skuespiller SET Navn="James Eugene Carrey" WHERE Navn="Jim Carrey";

DELETE FROM  Regissør WHERE Navn="Tom Shadyac";