/* Database Systems, Coronel/Morris */
/* Type of SQL : SQL Server */

/* ----------------------------------
Database: VendingCo
---------------------------------- */

IF
    NOT EXISTS (SELECT name
                FROM sys.databases
                WHERE name = N'cpsc441_chp3_vendingco')
CREATE DATABASE [cpsc441_chp3_vendingco];
GO

USE cpsc441_chp3_vendingco;

IF
    NOT EXISTS (SELECT TABLE_NAME
                FROM INFORMATION_SCHEMA.TABLES
                WHERE TABLE_NAME = N'BOOTH')
    BEGIN
        CREATE TABLE BOOTH (
            BOOTH_PRODUCT VARCHAR(50),
            BOOTH_PRICE NUMERIC
        );
        INSERT INTO BOOTH VALUES ('Chips', '1.5');
        INSERT INTO BOOTH VALUES ('Cola', '1.25');
        INSERT INTO BOOTH VALUES ('Energy Drink', '2');
    END
/* -- */

IF
    NOT EXISTS (SELECT TABLE_NAME
                FROM INFORMATION_SCHEMA.TABLES
                WHERE TABLE_NAME = N'MACHINE')
    BEGIN
        CREATE TABLE MACHINE (
            MACHINE_PRODUCT VARCHAR(50),
            MACHINE_PRICE NUMERIC
        );
        INSERT INTO MACHINE VALUES ('Chips', '1.25');
    END
/* -- */
