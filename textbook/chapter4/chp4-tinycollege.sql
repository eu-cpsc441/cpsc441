/* Database Systems, Coronel/Morris */
/* Type of SQL : SQL Server */

/* ----------------------------------
Database: TinyCollege
---------------------------------- */

IF
    NOT EXISTS (SELECT name
                FROM sys.databases
                WHERE name = N'cpsc441_chp4_tinycollege')
CREATE DATABASE [cpsc441_chp4_tinycollege];
GO

USE cpsc441_chp4_tinycollege;

IF
    NOT EXISTS (SELECT TABLE_NAME
                FROM INFORMATION_SCHEMA.TABLES
                WHERE TABLE_NAME = N'COURSE')
    BEGIN
        CREATE TABLE COURSE (
            CRS_CODE varchar(10),
            DEPT_CODE varchar(4),
            CRS_DESCRIPTION varchar(35),
            CRS_CREDIT int
        );
        INSERT INTO COURSE VALUES('ACCT-211','ACCT','Accounting I',3);
        INSERT INTO COURSE VALUES('ACCT-212','ACCT','Accounting II',3);
        INSERT INTO COURSE VALUES('ENGL-101','ENGL','College English I',3);
        INSERT INTO COURSE VALUES('ENGL-102','ENGL','College English II',3);
        INSERT INTO COURSE VALUES('HIST-101','HIST','Western Civ I',3);
        INSERT INTO COURSE VALUES('HIST-102','HIST','Western Civ II',3);
        INSERT INTO COURSE VALUES('MATH-121','MATH','College Algebra',3);
        INSERT INTO COURSE VALUES('MATH-122','MATH','Trigonometry',3);
        INSERT INTO COURSE VALUES('MATH-231','MATH','Calculus',3);
    END
/* -- */
