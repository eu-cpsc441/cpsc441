/* Database Systems, Coronel/Morris */
/* Type of SQL : Azure SQL Database */

USE cpsc441;
GO

CREATE SCHEMA c3_collegeque;
GO

CREATE TABLE c3_collegeque.PROFESSOR
(
    PROF_CODE int,
    DEPT_CODE varchar(8)
);

INSERT INTO c3_collegeque.PROFESSOR VALUES ('1', '2');
INSERT INTO c3_collegeque.PROFESSOR VALUES ('2', '6');
INSERT INTO c3_collegeque.PROFESSOR VALUES ('3', '6');
INSERT INTO c3_collegeque.PROFESSOR VALUES ('4', '4');

/* -- */

CREATE TABLE c3_collegeque.STUDENT
(
    STU_CODE  int,
    PROF_CODE int
);

INSERT INTO c3_collegeque.STUDENT VALUES ('100278', NULL);
INSERT INTO c3_collegeque.STUDENT VALUES ('128569', '2');
INSERT INTO c3_collegeque.STUDENT VALUES ('512272', '4');
INSERT INTO c3_collegeque.STUDENT VALUES ('531235', '2');
INSERT INTO c3_collegeque.STUDENT VALUES ('531268', '');
INSERT INTO c3_collegeque.STUDENT VALUES ('553427', '1');

/* -- */
