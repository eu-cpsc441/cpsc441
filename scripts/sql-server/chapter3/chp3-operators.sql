/* Database Systems, Coronel/Morris */
/* Type of SQL : SQL Server */

/* ----------------------------------
Database: Operators
---------------------------------- */

IF
    NOT EXISTS (SELECT name
                FROM sys.databases
                WHERE name = N'cpsc441_chp3_operators')
CREATE DATABASE [cpsc441_chp3_operators];
GO

USE cpsc441_chp3_operators;

IF
    NOT EXISTS (SELECT TABLE_NAME
                FROM INFORMATION_SCHEMA.TABLES
                WHERE TABLE_NAME = N'AGENT')
    BEGIN
        CREATE TABLE AGENT (
            AGENT_CODE varchar(50),
            AGENT_PHONE varchar(50)
        );
        INSERT INTO AGENT VALUES('125','6152439887');
        INSERT INTO AGENT VALUES('167','6153426778');
        INSERT INTO AGENT VALUES('231','6152431124');
        INSERT INTO AGENT VALUES('333','9041234445');
    END
/* -- */

IF
    NOT EXISTS (SELECT TABLE_NAME
                FROM INFORMATION_SCHEMA.TABLES
                WHERE TABLE_NAME = N'CUSTOMER')
    BEGIN
        CREATE TABLE CUSTOMER (
            CUS_CODE varchar(50),
            CUS_LNAME varchar(50),
            CUS_ZIP varchar(50),
            AGENT_CODE varchar(50)
        );
        INSERT INTO CUSTOMER VALUES('1132445','Walker','32145','231');
        INSERT INTO CUSTOMER VALUES('1217782','Adares','32145','125');
        INSERT INTO CUSTOMER VALUES('1312243','Rakowski','34129','167');
        INSERT INTO CUSTOMER VALUES('1321242','Rodriguez','37134','125');
        INSERT INTO CUSTOMER VALUES('1542311','Smithson','37134','421');
        INSERT INTO CUSTOMER VALUES('1657399','Vanloo','32145','231');
    END
/* -- */

IF
    NOT EXISTS (SELECT TABLE_NAME
                FROM INFORMATION_SCHEMA.TABLES
                WHERE TABLE_NAME = N'DIFF_TBL1')
    BEGIN
        CREATE TABLE DIFF_TBL1 (
            STU_FNAME varchar(50),
            STU_LNAME varchar(50)
        );
        INSERT INTO DIFF_TBL1 VALUES('George', 'Jones');
        INSERT INTO DIFF_TBL1 VALUES('Jane', 'Smith');
        INSERT INTO DIFF_TBL1 VALUES('Peter', 'Robinson');
        INSERT INTO DIFF_TBL1 VALUES('Franklin', 'Johnson');
        INSERT INTO DIFF_TBL1 VALUES('Martin', 'Lopez');
    END
/* -- */

IF
    NOT EXISTS (SELECT TABLE_NAME
                FROM INFORMATION_SCHEMA.TABLES
                WHERE TABLE_NAME = N'DIFF_TBL2')
    BEGIN
        CREATE TABLE DIFF_TBL2 (
            EMP_FNAME varchar(50),
            EMP_LNAME varchar(50)
        );
        INSERT INTO DIFF_TBL2 VALUES('George', 'Jones');
        INSERT INTO DIFF_TBL2 VALUES('Jane', 'Smith');
        INSERT INTO DIFF_TBL2 VALUES('Peter', 'Robinson');
        INSERT INTO DIFF_TBL2 VALUES('Franklin', 'Johnson');
    END
/* -- */
