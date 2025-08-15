/* Database Systems, Coronel/Morris */
/* Type of SQL : SQL Server */

/* ----------------------------------
Database: ShortCo
---------------------------------- */

IF
    NOT EXISTS (SELECT name
                FROM sys.databases
                WHERE name = N'cpsc441_chp4_shortco')
CREATE DATABASE [cpsc441_chp4_shortco];
GO

USE cpsc441_chp4_shortco;

IF
    NOT EXISTS (SELECT TABLE_NAME
                FROM INFORMATION_SCHEMA.TABLES
                WHERE TABLE_NAME = N'INVOICE')
    BEGIN
        CREATE TABLE INVOICE (
            INV_NUMBER int,
            INV_DATE date,
            INV_AMOUNT decimal(8,2)
        );
        INSERT INTO INVOICE VALUES(1,'1/1/2022',1000);
        INSERT INTO INVOICE VALUES(2,'1/2/2022',2000);
        INSERT INTO INVOICE VALUES(3,'1/3/2022',3000);
        INSERT INTO INVOICE VALUES(4,'1/4/2022',4000);
        INSERT INTO INVOICE VALUES(5,'1/5/2022',5000);
    END
/* -- */
