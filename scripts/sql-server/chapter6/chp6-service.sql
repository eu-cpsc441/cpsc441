/* Database Systems, Coronel/Morris */
/* Type of SQL : SQL Server */

/* ----------------------------------
Database: Service
---------------------------------- */

IF
    NOT EXISTS (SELECT name
                FROM sys.databases
                WHERE name = N'cpsc441_chp6_service')
CREATE DATABASE [cpsc441_chp6_service];
GO

USE cpsc441_chp6_service;

IF
    NOT EXISTS (SELECT TABLE_NAME
                FROM INFORMATION_SCHEMA.TABLES
                WHERE TABLE_NAME = N'CUSTOMER')
    BEGIN
        CREATE TABLE CUSTOMER (
            CUS_CODE varchar(3),
            CUS_LNAME varchar(15),
            CUS_FNAME varchar(15),
            CUS_INITIAL varchar(1),
            CUS_AREACODE varchar(3),
            CUS_PHONE varchar(8),
            CUS_BALANCE decimal(8,2)
        );
        INSERT INTO CUSTOMER VALUES('100','Ramas','Alfred','A','615','844-2573',0);
        INSERT INTO CUSTOMER VALUES('101','Smith','Tom','E','615','894-2285',345.86);
        INSERT INTO CUSTOMER VALUES('102','Olowski','Paul','F','615','894-2180',536.75);
        INSERT INTO CUSTOMER VALUES('103','Orlando','Myron','','615','222-1672',0);
        INSERT INTO CUSTOMER VALUES('104','Brown','James','G','615','297-1228',221.19);
    END
/* -- */
