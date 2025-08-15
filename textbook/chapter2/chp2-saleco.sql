/* Database Systems, Coronel/Morris */
/* Type of SQL : SQL Server */

/* ----------------------------------
Database: SaleCo
---------------------------------- */

IF
    NOT EXISTS (SELECT name
                FROM sys.databases
                WHERE name = N'cpsc441-chp2-saleco')
CREATE DATABASE [cpsc441-chp2-saleco];
GO

USE cpsc441-chp2-saleco;

IF
    NOT EXISTS (SELECT TABLE_NAME
                FROM INFORMATION_SCHEMA.TABLES
                WHERE TABLE_NAME = N'CUSTOMER')
    BEGIN
        CREATE TABLE CUSTOMER (
            CUS_CODE       varchar(50),
            CUS_LNAME     varchar(50),
            CUS_FNAME     varchar(50),
            CUS_INITIAL   varchar(50),
            CUS_AREACODE  varchar(50),
            CUS_PHONE     varchar(50),
            CUS_BALANCE   decimal(10,2)
        );
        INSERT INTO CUSTOMER VALUES('10010','Ramas','Alfred','A','615','844-2573',0);
        INSERT INTO CUSTOMER VALUES('10011','Dunne','Leona','K','713','894-1238',0);
        INSERT INTO CUSTOMER VALUES('10012','Smith','Kathy','W','615','894-2285',345.86);
        INSERT INTO CUSTOMER VALUES('10013','Olowski','Paul','F','615','894-2180',536.75);
        INSERT INTO CUSTOMER VALUES('10014','Orlando','Myron','','615','222-1672',0);
        INSERT INTO CUSTOMER VALUES('10015','O''Brian','Amy','B','713','442-3381',0);
        INSERT INTO CUSTOMER VALUES('10016','Brown','James','G','615','297-1228',221.19);
        INSERT INTO CUSTOMER VALUES('10017','Williams','George','','615','290-2556',768.93);
        INSERT INTO CUSTOMER VALUES('10018','Farriss','Anne','G','713','382-7185',216.55);
        INSERT INTO CUSTOMER VALUES('10019','Smith','Olette','K','615','297-3809',0);
    END
/* -- */
