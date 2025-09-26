/* Database Systems, Coronel/Morris */
/* Type of SQL : SQL Server */

/* ----------------------------------
Database: TheaterCo
---------------------------------- */

IF
    NOT EXISTS (SELECT name
                FROM sys.databases
                WHERE name = N'cpsc441_chp3_theaterco')
CREATE DATABASE [cpsc441_chp3_theaterco];
GO

USE cpsc441_chp3_theaterco;

IF
    NOT EXISTS (SELECT TABLE_NAME
                FROM INFORMATION_SCHEMA.TABLES
                WHERE TABLE_NAME = N'DIRECTOR')
    BEGIN
        CREATE TABLE DIRECTOR (
            DIR_NUM int,
            DIR_LNAME varchar(50),
            DIR_DOB datetime
        );
        INSERT INTO DIRECTOR VALUES('100','Broadway','1/12/1965');
        INSERT INTO DIRECTOR VALUES('101','Hollywoody','11/18/1953');
        INSERT INTO DIRECTOR VALUES('102','Goofy','6/21/1962');
    END
/* -- */

IF
    NOT EXISTS (SELECT TABLE_NAME
                FROM INFORMATION_SCHEMA.TABLES
                WHERE TABLE_NAME = N'PLAY')
    BEGIN
        CREATE TABLE PLAY (
            PLAY_CODE int,
            PLAY_NAME varchar(50),
            DIR_NUM int
        );
        INSERT INTO PLAY VALUES('1001','Cat On a Cold, Bare Roof','102');
    END
/* -- */
