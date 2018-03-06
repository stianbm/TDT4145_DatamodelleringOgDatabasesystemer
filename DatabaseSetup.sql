CREATE TABLE Film(
	FilmID INTEGER NOT NULL,
	Title VARCHAR(50),
	Produksjonsår INTEGER,
	RegissørID INTEGER NOT NULL,
	CONSTRAINT Film_PK PRIMARY KEY (FilmID),
	CONSTRAINT Film_FK FOREIGN KEY (RegissørID) REFERENCES Regissør(RegissørID)
												ON UPDATE CASCADE
												ON DELETE NO ACTION											
												);

CREATE TABLE Regissør(
	RegissørID INTEGER NOT NULL,
	Navn VARCHAR(50),
	CONSTRAINT Regissør_PK PRIMARY KEY (RegissørID));
	
CREATE TABLE Skuespiller(
	SkuespillerID INTEGER NOT NULL,
	Navn VARCHAR(50),
	Fødselsår INTEGER,
	CONSTRAINT Skuespiller_PK PRIMARY KEY (SkuespillerID));
	
CREATE TABLE Sjanger(
	SjangerID INTEGER NOT NULL,
	Navn VARCHAR(50),
	Beskrivelse VARCHAR(200),
	CONSTRAINT Sjanger_PK PRIMARY KEY (SjangerID));
	
CREATE TABLE SkuespillerFilm(
	FilmID INTEGER NOT NULL,
	SkuespillerID INTEGER NOT NULL,
	Rolle VARCHAR(50),
	CONSTRAINT SkuespillerFilm_PK PRIMARY KEY (FilmID, SkuespillerID),
	CONSTRAINT SkuespillerFilm_FK1 FOREIGN KEY (FilmID) REFERENCES Film(FilmID)
														ON UPDATE CASCADE
														ON DELETE CASCADE,
	CONSTRAINT SkuespillerFilm_FK2 FOREIGN KEY (SkuespillerID) REFERENCES Skuespiller(SkuespillerID)
																ON UPDATE CASCADE
																ON DELETE NO ACTION);
	
CREATE TABLE SjangerForFilm(
	FilmID INTEGER NOT NULL,
	SjangerID INTEGER NOT NULL,
	CONSTRAINT SjangerForFilm_PK PRIMARY KEY (FilmID, SjangerID),
	CONSTRAINT SjangerForFilm_FK1 FOREIGN KEY (FilmID) REFERENCES Film(FilmID)
														ON UPDATE CASCADE
														ON DELETE CASCADE,
	CONSTRAINT SjangerForFilm_FK2 FOREIGN KEY (SjangerID) REFERENCES Sjanger(SjangerID)
															ON UPDATE CASCADE
															ON DELETE NO ACTION);