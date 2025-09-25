/* Database Systems, Coronel/Morris */
/* Type of SQL : Azure SQL Database */

USE cpsc441;
GO

CREATE SCHEMA c3_storeco;
GO

CREATE TABLE c3_storeco.EMPLOYEE
(
    EMP_CODE    int,
    EMP_TITLE   varchar(4),
    EMP_LNAME   varchar(15),
    EMP_FNAME   varchar(15),
    EMP_INITIAL varchar(1),
    EMP_DOB     datetime,
    STORE_CODE  int
);

INSERT INTO c3_storeco.EMPLOYEE VALUES ('1', 'Mr.', 'Williamson', 'John', 'W', '5/21/1984', '3');
INSERT INTO c3_storeco.EMPLOYEE VALUES ('2', 'Ms.', 'Ratula', 'Nancy', '', '2/9/1989', '2');
INSERT INTO c3_storeco.EMPLOYEE VALUES ('3', 'Ms.', 'Greenboro', 'Lottie', 'R', '10/2/1981', '4');
INSERT INTO c3_storeco.EMPLOYEE VALUES ('4', 'Mrs.', 'Rumpersfro', 'Jennie', 'S', '6/1/1991', '5');
INSERT INTO c3_storeco.EMPLOYEE VALUES ('5', 'Mr.', 'Smith', 'Robert', 'L', '11/23/1979', '3');
INSERT INTO c3_storeco.EMPLOYEE VALUES ('6', 'Mr.', 'Renselaer', 'Cary', 'A', '12/25/1985', '1');
INSERT INTO c3_storeco.EMPLOYEE VALUES ('7', 'Mr.', 'Ogallo', 'Roberto', 'S', '7/31/1982', '3');
INSERT INTO c3_storeco.EMPLOYEE VALUES ('8', 'Ms.', 'Johnsson', 'Elizabeth', 'I', '9/10/1988', '1');

/* -- */
