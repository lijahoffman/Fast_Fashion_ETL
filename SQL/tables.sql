CREATE TABLE asos_prop (
	Colors VARCHAR NOT NULL PRIMARY KEY,
	ASOS_US DECIMAL NOT NULL,
	ASOS_FR DECIMAL NOT NULL,
	ASOS_ES DECIMAL NOT NULL,
	ASOS_DE DECIMAL NOT NULL,
	ASOS_IT DECIMAL NOT NULL,
	ASOS_AU DECIMAL NOT NULL
);

CREATE TABLE asos_combined (
	Colors VARCHAR NOT NULL PRIMARY KEY,
	ASOS_US DECIMAL NOT NULL,
	ASOS_FR DECIMAL NOT NULL,
	ASOS_ES DECIMAL NOT NULL,
	ASOS_DE DECIMAL NOT NULL,
	ASOS_IT DECIMAL NOT NULL,
	ASOS_AU DECIMAL NOT NULL, 
	ASOS_US_prop DECIMAL NOT NULL,
	ASOS_FR_prop DECIMAL NOT NULL,
	ASOS_ES_prop DECIMAL NOT NULL,
	ASOS_DE_prop DECIMAL NOT NULL,
	ASOS_IT_prop DECIMAL NOT NULL,
	ASOS_AU_prop DECIMAL NOT NULL
);

CREATE TABLE asos_all_combined (
	Colors VARCHAR NOT NULL PRIMARY KEY,
	ASOS_all DECIMAL NOT NULL, 
	ASOS_all_prop DECIMAL NOT NULL
);


CREATE TABLE mnytra_combined (
	Colors VARCHAR NOT NULL PRIMARY KEY,
	myntra_IN DECIMAL NOT NULL, 
	myntra_IN_prop DECIMAL NOT NULL
);



