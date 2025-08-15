/* Database Systems, Coronel/Morris */
/* Type of SQL : SQL Server */

/* ----------------------------------
Database: CollegeTry
---------------------------------- */

IF
    NOT EXISTS (SELECT name
                FROM sys.databases
                WHERE name = N'cpsc441_chp4_collegetry')
CREATE DATABASE [cpsc441_chp4_collegetry];
GO

USE cpsc441_chp4_collegetry;

IF
    NOT EXISTS (SELECT TABLE_NAME
                FROM INFORMATION_SCHEMA.TABLES
                WHERE TABLE_NAME = N'STUDENT')
    BEGIN
        CREATE TABLE STUDENT (
            STU_NUM varchar(5),
            STU_LNAME varchar(15),
            STU_FNAME varchar(15),
            STU_INIT varchar(1),
            STU_DOB date,
            STU_CLASS varchar(2),
            STU_GPA decimal(3,2),
            STU_HOURS int,
            DEPT_CODE varchar(4),
            STU_PHONE varchar(4)
        );
        INSERT INTO STUDENT VALUES('11111','Adams','Allan','A','1/1/2006','So',3.00,30,'ACCT','1117');
        INSERT INTO STUDENT VALUES('22222','Brown','Billy','B','2/2/2007','Fr',2.00,15,'MATH','1316');
        INSERT INTO STUDENT VALUES('33333','Clark','Carol','C','3/3/2006','So',2.50,30,'ENGL','1115');
        INSERT INTO STUDENT VALUES('44444','Davis','Donald','D','4/4/2007','Fr',1.50,15,'HIST','1114');
        INSERT INTO STUDENT VALUES('55555','Evans','Ellen','E','5/5/2006','So',3.50,30,'BIOL','1113');
    END
/* -- */
