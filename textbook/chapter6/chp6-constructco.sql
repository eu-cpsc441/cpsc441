/* Database Systems, Coronel/Morris */
/* Type of SQL : SQL Server */

/* ----------------------------------
Database: ConstructCo
---------------------------------- */

IF
    NOT EXISTS (SELECT name
                FROM sys.databases
                WHERE name = N'cpsc441-chp6-constructco')
CREATE DATABASE [cpsc441-chp6-constructco];
GO

USE cpsc441-chp6-constructco;

IF
    NOT EXISTS (SELECT TABLE_NAME
                FROM INFORMATION_SCHEMA.TABLES
                WHERE TABLE_NAME = N'EMPLOYEE')
    BEGIN
        CREATE TABLE EMPLOYEE (
            EMP_NUM varchar(3),
            EMP_LNAME varchar(15),
            EMP_FNAME varchar(15),
            EMP_INITIAL varchar(1),
            EMP_DOB date,
            EMP_HIRE_DATE date,
            JOB_CODE varchar(3)
        );
        INSERT INTO EMPLOYEE VALUES('101','News','John','G','1965-11-08','1989-11-08','502');
        INSERT INTO EMPLOYEE VALUES('102','Senior','David','H','1961-07-03','1989-11-08','501');
        INSERT INTO EMPLOYEE VALUES('103','Arbough','June','E','1957-05-17','1989-11-08','500');
        INSERT INTO EMPLOYEE VALUES('104','Ramoras','Anne','K','1963-11-15','1989-11-08','501');
        INSERT INTO EMPLOYEE VALUES('105','Johnson','Alice','K','1968-02-11','1989-11-08','502');
    END
/* -- */
