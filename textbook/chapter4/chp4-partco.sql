/* Database Systems, Coronel/Morris */
/* Type of SQL : SQL Server */

/* ----------------------------------
Database: PartCo
---------------------------------- */

IF
    NOT EXISTS (SELECT name
                FROM sys.databases
                WHERE name = N'cpsc441-chp4-partco')
CREATE DATABASE [cpsc441-chp4-partco];
GO

USE cpsc441-chp4-partco;

IF
    NOT EXISTS (SELECT TABLE_NAME
                FROM INFORMATION_SCHEMA.TABLES
                WHERE TABLE_NAME = N'PART')
    BEGIN
        CREATE TABLE PART (
            PART_CODE varchar(8),
            PART_DESCRIPT varchar(20),
            PART_PRICE decimal(6,2),
            PART_QOH int,
            PART_MIN int
        );
        INSERT INTO PART VALUES('A1','Hammer',12.50,35,20);
        INSERT INTO PART VALUES('A2','Wrench',8.95,45,25);
        INSERT INTO PART VALUES('A3','Screwdriver',5.95,55,30);
        INSERT INTO PART VALUES('A4','Pliers',7.95,40,20);
        INSERT INTO PART VALUES('B1','Washer',0.25,175,100);
        INSERT INTO PART VALUES('B2','Nail',0.10,220,150);
        INSERT INTO PART VALUES('B3','Screw',0.15,190,100);
        INSERT INTO PART VALUES('B4','Nut',0.20,200,150);
    END
/* -- */
