/* Database Systems, Coronel/Morris */
/* Type of SQL : Azure SQL Database */

USE cpsc441;
GO

CREATE SCHEMA c4_tinycollege;
GO

CREATE TABLE c4_tinycollege.COURSE
(
    CRS_CODE        varchar(10),
    DEPT_CODE       varchar(4),
    CRS_DESCRIPTION varchar(35),
    CRS_CREDIT      int
);

INSERT INTO c4_tinycollege.COURSE VALUES ('ACCT-211', 'ACCT', 'Accounting I', 3);
INSERT INTO c4_tinycollege.COURSE VALUES ('ACCT-212', 'ACCT', 'Accounting II', 3);
INSERT INTO c4_tinycollege.COURSE VALUES ('ENGL-101', 'ENGL', 'College English I', 3);
INSERT INTO c4_tinycollege.COURSE VALUES ('ENGL-102', 'ENGL', 'College English II', 3);
INSERT INTO c4_tinycollege.COURSE VALUES ('HIST-101', 'HIST', 'Western Civ I', 3);
INSERT INTO c4_tinycollege.COURSE VALUES ('HIST-102', 'HIST', 'Western Civ II', 3);
INSERT INTO c4_tinycollege.COURSE VALUES ('MATH-121', 'MATH', 'College Algebra', 3);
INSERT INTO c4_tinycollege.COURSE VALUES ('MATH-122', 'MATH', 'Trigonometry', 3);
INSERT INTO c4_tinycollege.COURSE VALUES ('MATH-231', 'MATH', 'Calculus', 3);

/* -- */
