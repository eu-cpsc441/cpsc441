/* Database Systems, Coronel/Morris */
/* Type of SQL : Azure SQL Database */

USE cpsc441;
GO

CREATE SCHEMA c5_tinycollege;
GO

CREATE TABLE c5_tinycollege.CLASS
(
    CLASS_CODE    varchar(5),
    CRS_CODE      varchar(10),
    CLASS_SECTION varchar(2),
    CLASS_TIME    varchar(20),
    ROOM_CODE     varchar(8),
    PROF_NUM      varchar(5)
);

INSERT INTO c5_tinycollege.CLASS VALUES ('10012', 'ACCT-211', '1', 'MWF 8:00-8:50', 'BUS311', '105');
INSERT INTO c5_tinycollege.CLASS VALUES ('10013', 'ACCT-211', '2', 'MWF 9:00-9:50', 'BUS200', '105');
INSERT INTO c5_tinycollege.CLASS VALUES ('10014', 'ACCT-211', '3', 'TTh 2:30-3:45', 'BUS252', '342');
INSERT INTO c5_tinycollege.CLASS VALUES ('10015', 'ACCT-212', '1', 'MWF 10:00-10:50', 'BUS311', '301');
INSERT INTO c5_tinycollege.CLASS VALUES ('10016', 'ACCT-212', '2', 'Th 6:00-8:40', 'BUS252', '301');

/* -- */
