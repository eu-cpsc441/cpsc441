/* Database Systems, Coronel/Morris */
/* Type of SQL : Azure SQL Database */

USE cpsc441;
GO

CREATE SCHEMA c3_museumco;
GO

CREATE TABLE c3_museumco.PAINTER
(
    PAINTER_NUM    int,
    PAINTER_LNAME  varchar(15),
    PAINTER_FNAME  varchar(15),
    PAINTER_INITIAL varchar(1)
);

INSERT INTO c3_museumco.PAINTER VALUES ('123', 'Ross', 'Georgette', 'P');
INSERT INTO c3_museumco.PAINTER VALUES ('126', 'Itero', 'Julio', 'G');

/* -- */

CREATE TABLE c3_museumco.PAINTING
(
    PAINTING_NUM   int,
    PAINTING_TITLE varchar(50),
    PAINTER_NUM    int
);

INSERT INTO c3_museumco.PAINTING VALUES ('1338', 'Dawn Thunder', '123');
INSERT INTO c3_museumco.PAINTING VALUES ('1339', 'Vanilla Roses To Nowhere', '123');
INSERT INTO c3_museumco.PAINTING VALUES ('1340', 'Tired Flounders', '126');
INSERT INTO c3_museumco.PAINTING VALUES ('1341', 'Hasty Exit', '123');
INSERT INTO c3_museumco.PAINTING VALUES ('1342', 'Plastic Paradise', '126');

/* -- */
