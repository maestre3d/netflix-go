/*
*	NETFLIX Simple database
*	Author:	A Ruiz
*	License: MIT
*/
CREATE TABLE IF NOT EXISTS ACTOR(
	ID 			SERIAL NOT NULL PRIMARY KEY,
	NAME 		VARCHAR(255) NOT NULL,
	SURNAME 	VARCHAR(255) NOT NULL,
	BIRTH 		DATE DEFAULT CURRENT_DATE,
	IMAGE		TEXT,
	POPULARITY	INT DEFAULT 0, -- From 0 to 100
	GENDER		BOOL DEFAULT FALSE, -- FALSE = MEN - TRUE = WOMEN
	NATIONALITY	VARCHAR(4) DEFAULT 'US', -- ISO-3166 2 Digit
	CREATED_AT 	TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS DIRECTOR(
	ID			SERIAL NOT NULL PRIMARY KEY,
	NAME		VARCHAR(255) NOT NULL,
	SURNAME		VARCHAR(255) NOT NULL,
	BIRTH		DATE DEFAULT CURRENT_DATE,
	IMAGE		TEXT,
	POPULARITY	INT DEFAULT 0, -- From 0 to 100,
	GENDER		BOOL DEFAULT FALSE, -- FALSE = MEN - TRUE = WOMEN
	NATIONALITY	VARCHAR(4) DEFAULT 'US', -- ISO-3166 2 Digit
	CREATED_AT	TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS MOVIE(
	ID 				SERIAL NOT NULL PRIMARY KEY,
	TITLE 			VARCHAR(255) NOT NULL,
	DESCRIPTION 	TEXT,
	PREMIERED_AT 	DATE DEFAULT CURRENT_DATE,
	IMAGE			TEXT,
	CRITIC_RATE		FLOAT DEFAULT 0.0, -- From 0 to 10
	NATIONALITY		VARCHAR(4) DEFAULT 'US', -- ISO-3166 2 Digit
	FK_DIRECTOR		SERIAL NOT NULL REFERENCES DIRECTOR(ID),
	CREATED_AT		TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS MOVIE_ACTORS(
	FK_MOVIE SERIAL NOT NULL REFERENCES MOVIE(ID) ON DELETE CASCADE,
	FK_ACTOR SERIAL NOT NULL REFERENCES ACTOR(ID)
);

CREATE TABLE IF NOT EXISTS SERIE(
	ID 				SERIAL NOT NULL PRIMARY KEY,
	TITLE 			VARCHAR(255) NOT NULL,
	DESCRIPTION 	TEXT,
	PREMIERED_AT 	DATE DEFAULT CURRENT_DATE,
	IMAGE 			TEXT,
	NATIONALITY		VARCHAR(4) DEFAULT 'US', -- ISO-3166 2 Digit
	CREATED_AT 		TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS SEASON(
	ID 				SERIAL NOT NULL PRIMARY KEY,
	TITLE 			VARCHAR(255) NOT NULL,
	DESCRIPTION 	TEXT,
	PREMIERED_AT 	DATE DEFAULT CURRENT_TIMESTAMP,
	CRITIC_RATE		INT DEFAULT 0, -- From 0 to 5
	FK_DIRECTOR		SERIAL NOT NULL REFERENCES DIRECTOR(ID),
	FK_SERIE 		SERIAL NOT NULL REFERENCES SERIE(ID) ON DELETE CASCADE,
	CREATED_AT 		TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS SEASON_ACTORS(
	FK_SEASON		SERIAL NOT NULL REFERENCES SEASON(ID) ON DELETE CASCADE,
	FK_ACTOR		SERIAL NOT NULL REFERENCES ACTOR(ID) ON DELETE CASCADE
);