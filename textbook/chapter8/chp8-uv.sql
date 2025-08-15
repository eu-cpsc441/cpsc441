/* Database Systems, Coronel/Morris */
/* Type of SQL : SQL Server */

/* ----------------------------------
Database: UV
---------------------------------- */

IF
    NOT EXISTS (SELECT name
                FROM sys.databases
                WHERE name = N'cpsc441_chp8_uv')
CREATE DATABASE [cpsc441_chp8_uv];
GO

USE cpsc441_chp8_uv;

IF
    NOT EXISTS (SELECT TABLE_NAME
                FROM INFORMATION_SCHEMA.TABLES
                WHERE TABLE_NAME = N'PRODMASTER')
    BEGIN
        CREATE TABLE PRODMASTER (
PROD_ID varchar(50) PRIMARY KEY,
PROD_DESC varchar(50),
PROD_QOH int
);
INSERT INTO PRODMASTER VALUES('A123','SCREWS','67');
INSERT INTO PRODMASTER VALUES('BX34','NUTS','37');
INSERT INTO PRODMASTER VALUES('C583','BOLTS','50');

/* -- */


CREATE TABLE PRODSALES (
PROD_ID varchar(50) PRIMARY KEY,
PS_QTY int
);
INSERT INTO PRODSALES VALUES('A123','7');
INSERT INTO PRODSALES VALUES('BX34','3');
