/* Database Systems, Coronel/Morris */
/* Type of SQL : Azure SQL Database */

USE cpsc441;
GO

CREATE SCHEMA c5_airco;
GO

CREATE TABLE c5_airco.AIRCRAFT
(
    AC_NUMBER varchar(5),
    AC_TYPE   varchar(6),
    AC_SEATS  int
);

INSERT INTO c5_airco.AIRCRAFT VALUES ('101', '747', 400);
INSERT INTO c5_airco.AIRCRAFT VALUES ('102', 'DC10', 300);
INSERT INTO c5_airco.AIRCRAFT VALUES ('103', '737', 200);
INSERT INTO c5_airco.AIRCRAFT VALUES ('104', 'A310', 250);
INSERT INTO c5_airco.AIRCRAFT VALUES ('105', '727', 150);

/* -- */
