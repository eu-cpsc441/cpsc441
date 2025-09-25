/* Database Systems, Coronel/Morris */
/* Type of SQL : Azure SQL Database */

USE cpsc441;
GO

CREATE SCHEMA c3_beneco;
GO

CREATE TABLE c3_beneco.BENEFIT
(
    EMP_CODE  int,
    PLAN_CODE int
);

INSERT INTO c3_beneco.BENEFIT VALUES ('12', '1');
INSERT INTO c3_beneco.BENEFIT VALUES ('12', '2');
INSERT INTO c3_beneco.BENEFIT VALUES ('14', '2');
INSERT INTO c3_beneco.BENEFIT VALUES ('15', '2');
INSERT INTO c3_beneco.BENEFIT VALUES ('15', '3');
INSERT INTO c3_beneco.BENEFIT VALUES ('16', '1');
INSERT INTO c3_beneco.BENEFIT VALUES ('17', '1');
INSERT INTO c3_beneco.BENEFIT VALUES ('17', '3');
INSERT INTO c3_beneco.BENEFIT VALUES ('17', '4');
INSERT INTO c3_beneco.BENEFIT VALUES ('20', '3');

/* -- */

CREATE TABLE c3_beneco.EMPLOYEE
(
    EMP_CODE  int,
    EMP_LNAME varchar(12),
    JOB_CODE  int
);

INSERT INTO c3_beneco.EMPLOYEE VALUES ('14', 'Rudell', '2');
INSERT INTO c3_beneco.EMPLOYEE VALUES ('15', 'McDade', '1');
INSERT INTO c3_beneco.EMPLOYEE VALUES ('16', 'Ruellardo', '1');
INSERT INTO c3_beneco.EMPLOYEE VALUES ('17', 'Smith', '3');
INSERT INTO c3_beneco.EMPLOYEE VALUES ('20', 'Smith', '2');

/* -- */

CREATE TABLE c3_beneco.JOB
(
    JOB_CODE        int,
    JOB_DESCRIPTION varchar(20)
);

INSERT INTO c3_beneco.JOB VALUES ('1', 'Clerical');
INSERT INTO c3_beneco.JOB VALUES ('2', 'Technical');
INSERT INTO c3_beneco.JOB VALUES ('3', 'Managerial');

/* -- */

/* NOTE:                                 */
/* PLAN is a reserved word in SQL Server */
/* Therefore, please change all references */
/* of PLAN to PLANS in this script and text book */

CREATE TABLE c3_beneco.PLANS
(
    PLAN_CODE        int,
    PLAN_DESCRIPTION varchar(20)
);

INSERT INTO c3_beneco.PLANS VALUES ('1', 'Term life');
INSERT INTO c3_beneco.PLANS VALUES ('2', 'Stock purchase');
INSERT INTO c3_beneco.PLANS VALUES ('3', 'Long-term disability');
INSERT INTO c3_beneco.PLANS VALUES ('4', 'Dental');

/* -- */
