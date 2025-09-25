/* Database Systems, Coronel/Morris */
/* Type of SQL : Azure SQL Database */

USE cpsc441;
GO

CREATE SCHEMA c5_gcsdata;
GO

CREATE TABLE c5_gcsdata.STUDENT
(
    STU_NUM   varchar(5),
    STU_LNAME varchar(15),
    STU_FNAME varchar(15),
    STU_INIT  varchar(1),
    STU_DOB   date,
    STU_HRS   int,
    STU_CLASS varchar(2),
    STU_GPA   decimal(3, 2),
    STU_PHONE varchar(4),
    DEPT_CODE varchar(4)
);

INSERT INTO c5_gcsdata.STUDENT VALUES ('11111', 'Smith', 'John', 'J', '1/1/2006', 30, 'So', 3.00, '1111', 'MATH');
INSERT INTO c5_gcsdata.STUDENT VALUES ('22222', 'Jones', 'Mary', 'M', '2/2/2007', 15, 'Fr', 2.00, '2222', 'ENGL');
INSERT INTO c5_gcsdata.STUDENT VALUES ('33333', 'Brown', 'Bill', 'B', '3/3/2006', 30, 'So', 2.50, '3333', 'COSC');

/* -- */
