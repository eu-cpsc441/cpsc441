/* Database Systems, Coronel/Morris */
/* Type of SQL : Azure SQL Database */

USE cpsc441;
GO

CREATE SCHEMA c6_constructco;
GO

CREATE TABLE c6_constructco.EMPLOYEE
(
    EMP_NUM        varchar(3),
    EMP_LNAME      varchar(15),
    EMP_FNAME      varchar(15),
    EMP_INITIAL    varchar(1),
    EMP_DOB        date,
    EMP_HIRE_DATE  date,
    JOB_CODE       varchar(3)
);

INSERT INTO c6_constructco.EMPLOYEE VALUES ('101', 'News', 'John', 'G', '1965-11-08', '1989-11-08', '502');
INSERT INTO c6_constructco.EMPLOYEE VALUES ('102', 'Senior', 'David', 'H', '1961-07-03', '1989-11-08', '501');
INSERT INTO c6_constructco.EMPLOYEE VALUES ('103', 'Arbough', 'June', 'E', '1957-05-17', '1989-11-08', '500');
INSERT INTO c6_constructco.EMPLOYEE VALUES ('104', 'Ramoras', 'Anne', 'K', '1963-11-15', '1989-11-08', '501');
INSERT INTO c6_constructco.EMPLOYEE VALUES ('105', 'Johnson', 'Alice', 'K', '1968-02-11', '1989-11-08', '502');

/* -- */
