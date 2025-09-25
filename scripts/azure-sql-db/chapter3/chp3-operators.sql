/* Database Systems, Coronel/Morris */
/* Type of SQL : Azure SQL Database */

USE cpsc441;
GO

CREATE SCHEMA c3_operators;
GO

CREATE TABLE c3_operators.AGENT
(
    AGENT_CODE  varchar(50),
    AGENT_PHONE varchar(50)
);

INSERT INTO c3_operators.AGENT VALUES ('125', '6152439887');
INSERT INTO c3_operators.AGENT VALUES ('167', '6153426778');
INSERT INTO c3_operators.AGENT VALUES ('231', '6152431124');
INSERT INTO c3_operators.AGENT VALUES ('333', '9041234445');

/* -- */

CREATE TABLE c3_operators.CUSTOMER
(
    CUS_CODE   varchar(50),
    CUS_LNAME  varchar(50),
    CUS_ZIP    varchar(50),
    AGENT_CODE varchar(50)
);

INSERT INTO c3_operators.CUSTOMER VALUES ('1132445', 'Walker', '32145', '231');
INSERT INTO c3_operators.CUSTOMER VALUES ('1217782', 'Adares', '32145', '125');
INSERT INTO c3_operators.CUSTOMER VALUES ('1312243', 'Rakowski', '34129', '167');
INSERT INTO c3_operators.CUSTOMER VALUES ('1321242', 'Rodriguez', '37134', '125');
INSERT INTO c3_operators.CUSTOMER VALUES ('1542311', 'Smithson', '37134', '421');
INSERT INTO c3_operators.CUSTOMER VALUES ('1657399', 'Vanloo', '32145', '231');

/* -- */

CREATE TABLE c3_operators.DIFF_TBL1
(
    STU_FNAME varchar(50),
    STU_LNAME varchar(50)
);

INSERT INTO c3_operators.DIFF_TBL1 VALUES ('George', 'Jones');
INSERT INTO c3_operators.DIFF_TBL1 VALUES ('Jane', 'Smith');
INSERT INTO c3_operators.DIFF_TBL1 VALUES ('Peter', 'Robinson');
INSERT INTO c3_operators.DIFF_TBL1 VALUES ('Franklin', 'Johnson');
INSERT INTO c3_operators.DIFF_TBL1 VALUES ('Martin', 'Lopez');

/* -- */

CREATE TABLE c3_operators.DIFF_TBL2
(
    EMP_FNAME varchar(50),
    EMP_LNAME varchar(50)
);

INSERT INTO c3_operators.DIFF_TBL2 VALUES ('George', 'Jones');
INSERT INTO c3_operators.DIFF_TBL2 VALUES ('Jane', 'Smith');
INSERT INTO c3_operators.DIFF_TBL2 VALUES ('Peter', 'Robinson');
INSERT INTO c3_operators.DIFF_TBL2 VALUES ('Franklin', 'Johnson');

/* -- */
