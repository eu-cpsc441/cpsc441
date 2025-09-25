/* Database Systems, Coronel/Morris */
/* Type of SQL : Azure SQL Database */

USE cpsc441;
GO

CREATE SCHEMA c3_collegetry;
GO

CREATE TABLE c3_collegetry.CLASS
(
    CLASS_CODE    varchar(5),
    STU_NUM       int,
    CRS_CODE      varchar(10),
    CLASS_SECTION varchar(2),
    CLASS_TIME    varchar(20),
    CLASS_ROOM    varchar(8),
    PROF_NUM      float(8)
);

INSERT INTO c3_collegetry.CLASS VALUES ('10014', '321452', 'ACCT-211', '3', 'TTh 2:30-3:45 p.m.', 'BUS252', '342');
INSERT INTO c3_collegetry.CLASS VALUES ('10014', '324257', 'ACCT-211', '3', 'TTh 2:30-3:45 p.m.', 'BUS252', '342');
INSERT INTO c3_collegetry.CLASS VALUES ('10018', '321452', 'CIS-220', '2', 'MWF 9:00-9:50 a.m.', 'KLR211', '114');
INSERT INTO c3_collegetry.CLASS VALUES ('10018', '324257', 'CIS-220', '2', 'MWF 9:00-9:50 a.m.', 'KLR211', '114');
INSERT INTO c3_collegetry.CLASS VALUES ('10021', '321452', 'QM-261', '1', 'MWF 8:00-8:50 a.m.', 'KLR200', '114');
INSERT INTO c3_collegetry.CLASS VALUES ('10021', '324257', 'QM-261', '1', 'MWF 8:00-8:50 a.m.', 'KLR200', '114');

/* -- */

CREATE TABLE c3_collegetry.STUDENT
(
    STU_NUM    int,
    STU_LNAME  varchar(15),
    CLASS_CODE varchar(5)
);

INSERT INTO c3_collegetry.STUDENT VALUES ('321452', 'Bowser', '10014');
INSERT INTO c3_collegetry.STUDENT VALUES ('321452', 'Bowser', '10018');
INSERT INTO c3_collegetry.STUDENT VALUES ('321452', 'Bowser', '10021');
INSERT INTO c3_collegetry.STUDENT VALUES ('324257', 'Smithson', '10014');
INSERT INTO c3_collegetry.STUDENT VALUES ('324257', 'Smithson', '10018');
INSERT INTO c3_collegetry.STUDENT VALUES ('324257', 'Smithson', '10021');

/* -- */
