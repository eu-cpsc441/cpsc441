/* Database Systems, Coronel/Morris */
/* Type of SQL : Azure SQL Database */

USE cpsc441;
GO

CREATE SCHEMA c4_partco;
GO

CREATE TABLE c4_partco.PART
(
    PART_CODE     varchar(8),
    PART_DESCRIPT varchar(20),
    PART_PRICE    decimal(6, 2),
    PART_QOH      int,
    PART_MIN      int
);

INSERT INTO c4_partco.PART VALUES ('A1', 'Hammer', 12.50, 35, 20);
INSERT INTO c4_partco.PART VALUES ('A2', 'Wrench', 8.95, 45, 25);
INSERT INTO c4_partco.PART VALUES ('A3', 'Screwdriver', 5.95, 55, 30);
INSERT INTO c4_partco.PART VALUES ('A4', 'Pliers', 7.95, 40, 20);
INSERT INTO c4_partco.PART VALUES ('B1', 'Washer', 0.25, 175, 100);
INSERT INTO c4_partco.PART VALUES ('B2', 'Nail', 0.10, 220, 150);
INSERT INTO c4_partco.PART VALUES ('B3', 'Screw', 0.15, 190, 100);
INSERT INTO c4_partco.PART VALUES ('B4', 'Nut', 0.20, 200, 150);

/* -- */
