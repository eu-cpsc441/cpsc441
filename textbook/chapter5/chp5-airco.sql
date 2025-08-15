/* Database Systems, Coronel/Morris */
/* Type of SQL : SQL Server */

/* ----------------------------------
Database: AirCo
---------------------------------- */

IF
    NOT EXISTS (SELECT name
                FROM sys.databases
                WHERE name = N'cpsc441-chp5-airco')
CREATE DATABASE [cpsc441-chp5-airco];
GO

USE cpsc441-chp5-airco;

IF
    NOT EXISTS (SELECT TABLE_NAME
                FROM INFORMATION_SCHEMA.TABLES
                WHERE TABLE_NAME = N'AIRCRAFT')
    BEGIN
        CREATE TABLE AIRCRAFT (
            AC_NUMBER varchar(5),
            AC_TYPE varchar(6),
            AC_SEATS int
        );
        INSERT INTO AIRCRAFT VALUES('101','747',400);
        INSERT INTO AIRCRAFT VALUES('102','DC10',300);
        INSERT INTO AIRCRAFT VALUES('103','737',200);
        INSERT INTO AIRCRAFT VALUES('104','A310',250);
        INSERT INTO AIRCRAFT VALUES('105','727',150);
    END
/* -- */
