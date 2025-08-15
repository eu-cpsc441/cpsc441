/* Database Systems, Coronel/Morris */
/* Type of SQL : SQL Server */

/* ----------------------------------
Database: TinyCollege
---------------------------------- */

IF
    NOT EXISTS (SELECT name
                FROM sys.databases
                WHERE name = N'cpsc441-chp3-tinycollege')
CREATE DATABASE [cpsc441-chp3-tinycollege];
GO

USE cpsc441-chp3-tinycollege;

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
            CLASS_ROOM varchar(8),
            PROF_NUM float(8)
        );
        INSERT INTO CLASS VALUES('10012','ACCT-211','1','MWF 8:00-8:50 a.m.','BUS311','105');
        INSERT INTO CLASS VALUES('10013','ACCT-211','2','MWF 9:00-9:50 a.m.','BUS200','105');
        INSERT INTO CLASS VALUES('10014','ACCT-211','3','TTh 2:30-3:45 p.m.','BUS252','342');
        INSERT INTO CLASS VALUES('10015','ACCT-212','1','MWF 10:00-10:50 a.m.','BUS311','301');
        INSERT INTO CLASS VALUES('10016','ACCT-212','2','Th 6:00-8:40 p.m.','BUS252','301');
        INSERT INTO CLASS VALUES('10017','CIS-220','1','MWF 9:00-9:50 a.m.','KLR209','228');
        INSERT INTO CLASS VALUES('10018','CIS-220','2','MWF 9:00-9:50 a.m.','KLR211','114');
        INSERT INTO CLASS VALUES('10019','CIS-220','3','MWF 10:00-10:50 a.m.','KLR209','228');
        INSERT INTO CLASS VALUES('10020','CIS-420','1','W 6:00-8:40 p.m.','KLR209','162');
    END
/* -- */
