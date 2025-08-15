/* Database Systems, Coronel/Morris */
/* Type of SQL : SQL Server */

/* ----------------------------------
Database: TransCo
---------------------------------- */

IF
    NOT EXISTS (SELECT name
                FROM sys.databases
                WHERE name = N'cpsc441-chp3-transco')
CREATE DATABASE [cpsc441-chp3-transco];
GO

USE cpsc441-chp3-transco;

IF
    NOT EXISTS (SELECT TABLE_NAME
                FROM INFORMATION_SCHEMA.TABLES
                WHERE TABLE_NAME = N'BASE')
    BEGIN
        CREATE TABLE BASE (
            BASE_CODE int,
            BASE_CITY varchar(20),
            BASE_STATE varchar(2),
            BASE_AREA_CODE varchar(3),
            BASE_PHONE varchar(8),
            BASE_MANAGER varchar(25)
        );
        INSERT INTO BASE VALUES('501','Murfreesboro','TN','615','123-4567','Andrea D. Gallager');
        INSERT INTO BASE VALUES('502','Lexington','KY','568','234-5678','George H. Delarosa');
        INSERT INTO BASE VALUES('503','Cape Girardeau','MO','456','345-6789','Maria J. Talindo');
        INSERT INTO BASE VALUES('504','Dalton','GA','901','456-7890','Peter F. McAvee');
    END
/* -- */

IF
    NOT EXISTS (SELECT TABLE_NAME
                FROM INFORMATION_SCHEMA.TABLES
                WHERE TABLE_NAME = N'TRUCK')
    BEGIN
        CREATE TABLE TRUCK (
            TRUCK_NUM varchar(10),
            BASE_CODE int
        );
        INSERT INTO TRUCK VALUES('1','501');
        INSERT INTO TRUCK VALUES('2','501');
        INSERT INTO TRUCK VALUES('3','502');
        INSERT INTO TRUCK VALUES('4','502');
        INSERT INTO TRUCK VALUES('5','503');
        INSERT INTO TRUCK VALUES('6','503');
        INSERT INTO TRUCK VALUES('7','504');
        INSERT INTO TRUCK VALUES('8','504');
    END
/* -- */
