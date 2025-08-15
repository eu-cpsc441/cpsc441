/* Database Systems, Coronel/Morris */
/* Type of SQL : SQL Server */

/* ----------------------------------
Database: TinyCollege
---------------------------------- */

IF
    NOT EXISTS (SELECT name
                FROM sys.databases
                WHERE name = N'cpsc441-chp5-tinycollege')
CREATE DATABASE [cpsc441-chp5-tinycollege];
GO

USE cpsc441-chp5-tinycollege;

IF
    NOT EXISTS (SELECT TABLE_NAME
                FROM INFORMATION_SCHEMA.TABLES
                WHERE TABLE_NAME = N'CLASS')
    BEGIN
        CREATE TABLE CLASS (
            CLASS_CODE varchar(5),
            CRS_CODE varchar(10),
            CLASS_SECTION varchar(2),
            CLASS_TIME varchar(20),
            ROOM_CODE varchar(8),
            PROF_NUM varchar(5)
        );
        INSERT INTO CLASS VALUES('10012','ACCT-211','1','MWF 8:00-8:50','BUS311','105');
        INSERT INTO CLASS VALUES('10013','ACCT-211','2','MWF 9:00-9:50','BUS200','105');
        INSERT INTO CLASS VALUES('10014','ACCT-211','3','TTh 2:30-3:45','BUS252','342');
        INSERT INTO CLASS VALUES('10015','ACCT-212','1','MWF 10:00-10:50','BUS311','301');
        INSERT INTO CLASS VALUES('10016','ACCT-212','2','Th 6:00-8:40','BUS252','301');
    END
/* -- */
