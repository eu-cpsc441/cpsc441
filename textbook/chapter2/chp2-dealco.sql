/* Database Systems, Coronel/Morris */
/* Type of SQL : SQL Server */

/* ----------------------------------
Database: DealCo
---------------------------------- */

IF
    NOT EXISTS (SELECT name
                FROM sys.databases
                WHERE name = N'cpsc441-chp2-dealco')
CREATE DATABASE [cpsc441-chp2-dealco];
GO

USE cpsc441-chp2-dealco;

IF
    NOT EXISTS (SELECT TABLE_NAME
                FROM INFORMATION_SCHEMA.TABLES
                WHERE TABLE_NAME = N'DEAL')
    BEGIN
        CREATE TABLE DEAL (
            DEAL_NUM        VARCHAR(50),
            DEAL_DATE      DATETIME,
            PROPERTY_ID    VARCHAR(50),
            AGENT_ID       VARCHAR(50),
            CUSTOMER_ID    VARCHAR(50)
        );
        INSERT INTO DEAL VALUES('1', '2025-08-15', 'P1', 'A1', 'C1');
        INSERT INTO DEAL VALUES('2', '2025-08-15', 'P2', 'A2', 'C2');
    END
/* -- */
