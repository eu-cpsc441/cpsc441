/* Database Systems, Coronel/Morris */
/* Type of SQL : SQL Server */

/* ----------------------------------
Database: InsureCo
---------------------------------- */

IF
    NOT EXISTS (SELECT name
                FROM sys.databases
                WHERE name = N'cpsc441-chp2-insureco')
CREATE DATABASE [cpsc441-chp2-insureco];
GO

USE cpsc441-chp2-insureco;

IF
    NOT EXISTS (SELECT TABLE_NAME
                FROM INFORMATION_SCHEMA.TABLES
                WHERE TABLE_NAME = N'AGENT')
    BEGIN
        CREATE TABLE AGENT (
            AGENT_CODE       int,
            AGENT_NAME      varchar(50),
            WORKING_AREA    varchar(50),
            COMMISSION      decimal(10,2),
            PHONE_NO        varchar(50),
            COUNTRY        varchar(50)
        );
        INSERT INTO AGENT VALUES(7,'Ramasundar','Bangalore',0.15,'077-25814763','');
        INSERT INTO AGENT VALUES(3,'Alex ','London',0.13,'075-12458969','');
        INSERT INTO AGENT VALUES(8,'Alford','New York',0.12,'044-25874365','');
        INSERT INTO AGENT VALUES(13,'Ravi Kumar','Bangalore',0.15,'077-45625874','');
        INSERT INTO AGENT VALUES(10,'Santakumar','Chennai',0.14,'007-22388644','');
        INSERT INTO AGENT VALUES(11,'Lucida','San Jose',0.12,'044-52981425','');
        INSERT INTO AGENT VALUES(12,'Anderson','Brisban',0.13,'045-21447739','');
        INSERT INTO AGENT VALUES(15,'Subbarao','Bangalore',0.14,'077-12346674','');
        INSERT INTO AGENT VALUES(4,'Ivan','Torento',0.15,'008-22544166','');
        INSERT INTO AGENT VALUES(5,'Benjamin','Hampshair',0.11,'008-22536178','');
    END
/* -- */
