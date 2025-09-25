/* Database Systems, Coronel/Morris */
/* Type of SQL : Azure SQL Database */

USE cpsc441;
GO

CREATE SCHEMA c3_theaterco;
GO

CREATE TABLE c3_theaterco.DIRECTOR
(
    DIR_NUM   int,
    DIR_LNAME varchar(50),
    DIR_DOB   datetime
);

INSERT INTO c3_theaterco.DIRECTOR VALUES ('100', 'Broadway', '1/12/1965');
INSERT INTO c3_theaterco.DIRECTOR VALUES ('101', 'Hollywoody', '11/18/1953');
INSERT INTO c3_theaterco.DIRECTOR VALUES ('102', 'Goofy', '6/21/1962');

/* -- */

CREATE TABLE c3_theaterco.PLAY
(
    PLAY_CODE int,
    PLAY_NAME varchar(50),
    DIR_NUM   int
);

INSERT INTO c3_theaterco.PLAY VALUES ('1001', 'Cat On a Cold, Bare Roof', '102');

/* -- */
