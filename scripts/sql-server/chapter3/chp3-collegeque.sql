/* Database Systems, Coronel/Morris */
/* Type of SQL : SQL Server */

/* ----------------------------------
Database: CollegeQue
---------------------------------- */

IF
    NOT EXISTS (SELECT name
                FROM sys.databases
                WHERE name = N'cpsc441_chp3_collegeque')
CREATE DATABASE [cpsc441_chp3_collegeque];
GO

USE cpsc441_chp3_collegeque;

IF
    NOT EXISTS (SELECT TABLE_NAME
                FROM INFORMATION_SCHEMA.TABLES
                WHERE TABLE_NAME = N'PROFESSOR')
    BEGIN
        CREATE TABLE PROFESSOR (
            PROF_CODE int,
            DEPT_CODE varchar(8)
        );
        INSERT INTO PROFESSOR VALUES('1','2');
        INSERT INTO PROFESSOR VALUES('2','6');
        INSERT INTO PROFESSOR VALUES('3','6');
        INSERT INTO PROFESSOR VALUES('4','4');
    END
/* -- */

IF
    NOT EXISTS (SELECT TABLE_NAME
                FROM INFORMATION_SCHEMA.TABLES
                WHERE TABLE_NAME = N'STUDENT')
    BEGIN
        CREATE TABLE STUDENT (
            STU_CODE int,
            PROF_CODE int
        );
        INSERT INTO STUDENT VALUES('100278',NULL);
        INSERT INTO STUDENT VALUES('128569','2');
        INSERT INTO STUDENT VALUES('512272','4');
        INSERT INTO STUDENT VALUES('531235','2');
        INSERT INTO STUDENT VALUES('531268','');
        INSERT INTO STUDENT VALUES('553427','1');
    END
/* -- */
