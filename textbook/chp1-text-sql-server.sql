-- Database: cpsc441-chpt1

/* Database Systems, Coronel/Morris */
/* Type of SQL : SQL Server */


CREATE TABLE EMPLOYEE
(
    EMPLOYEE_ID       VARCHAR(6) PRIMARY KEY,
    EMPLOYEE_FNAME    VARCHAR(20),
    EMPLOYEE_LNAME    VARCHAR(20),
    EMPLOYEE_HIREDATE DATETIME,
    EMPLOYEE_TITLE    VARCHAR(30)
);

CREATE TABLE SKILL
(
    SKILL_ID          NUMERIC(6, 0) PRIMARY KEY,
    SKILL_NAME        VARCHAR(75),
    SKILL_DESCRIPTION VARCHAR(200)
);

CREATE TABLE CERTIFIED
(
    EMPLOYEE_ID    VARCHAR(6) REFERENCES EMPLOYEE,
    SKILL_ID       NUMERIC(6, 0) REFERENCES SKILL,
    CERTIFIED_DATE DATETIME,
    PRIMARY KEY (EMPLOYEE_ID, SKILL_ID)
);

CREATE TABLE EMPLOYEESKILLS
(
    ID                NUMERIC(6, 0) PRIMARY KEY,
    EMPLOYEENUMBER    VARCHAR(6),
    EMPLOYEENAME      VARCHAR(40),
    TITLE             VARCHAR(30),
    HIREDATE          DATETIME,
    SKILL1            VARCHAR(75),
    SKILL1DESCRIPTION VARCHAR(200),
    SKILL1DATE        DATETIME,
    SKILL2            VARCHAR(75),
    SKILL2DESCRIPTION VARCHAR(200),
    SKILL2DATE        DATETIME,
    SKILL3            VARCHAR(75),
    SKILL3DESCRIPTION VARCHAR(200),
    SKILL3DATE        DATETIME
);

INSERT INTO EMPLOYEE
VALUES ('02345', 'Johnny', 'Jones', '02/14/2001', 'DBA');
INSERT INTO EMPLOYEE
VALUES ('03373', 'Franklin', 'Johnson', '03/15/2008', 'Purchasing Agent');
INSERT INTO EMPLOYEE
VALUES ('04893', 'Patricia', 'Richards', '06/11/2010', 'DBA');
INSERT INTO EMPLOYEE
VALUES ('06234', 'Jasmine', 'Patel', '08/10/2011', 'Programmer');
INSERT INTO EMPLOYEE
VALUES ('08273', 'Marco', 'Bienz', '07/28/2012', 'Analyst');
INSERT INTO EMPLOYEE
VALUES ('09002', 'Ben', 'Joiner', '05/20/2016', 'Clerk');
INSERT INTO EMPLOYEE
VALUES ('09283', 'Juan', 'Chavez', '07/04/2016', 'Clerk');
INSERT INTO EMPLOYEE
VALUES ('09382', 'Jessica', 'Johnson', '08/02/2016', 'Database Programmer');
INSERT INTO EMPLOYEE
VALUES ('10282', 'Amanda', 'Richardson', '04/11/2017', 'Clerk');
INSERT INTO EMPLOYEE
VALUES ('13383', 'Raymond', 'Matthews', '03/12/2018', 'Programmer');
INSERT INTO EMPLOYEE
VALUES ('13567', 'Robert', 'Almond', '09/30/2018', 'Analyst');
INSERT INTO EMPLOYEE
VALUES ('13932', 'Megan', 'Lee', '09/29/2019', 'Programmer');
INSERT INTO EMPLOYEE
VALUES ('14311', 'Lee', 'Duong', '09/01/2018', 'Programmer');

INSERT INTO SKILL
VALUES (100, 'Basic Database Managment', 'Create and manage database user accounts.');
INSERT INTO SKILL
VALUES (110, 'Basic Web Design', 'Create and maintain HTML and CSS documents.');
INSERT INTO SKILL
VALUES (120, 'Advanced Spreadsheets', 'Use of advanced functions, user-defined functions, and macroing.');
INSERT INTO SKILL
VALUES (130, 'Basic Process Modeling', 'Create core business process models using standard libraries.');
INSERT INTO SKILL
VALUES (140, 'Basic Database Design', 'Create simple data models.');
INSERT INTO SKILL
VALUES (150, 'Master Database Programming',
        'Create integrated trigger and procedure packages for a distributed environment.');
INSERT INTO SKILL
VALUES (160, 'Basic Spreadsheets', 'Create single tab worksheets with basic formulas');
INSERT INTO SKILL
VALUES (170, 'Basic C# Programming', 'Create single-tier data aware modules.');
INSERT INTO SKILL
VALUES (180, 'Advanced Database Managment', 'Manage Database Server Clusters.');
INSERT INTO SKILL
VALUES (190, 'Advanced Process Modeling',
        'Evaluate and Redesign cross-functional internal and external business processes.');
INSERT INTO SKILL
VALUES (200, 'Advanced C# Programming', 'Create multi-tier applications using multi-threading.');
INSERT INTO SKILL
VALUES (210, 'Basic Database Manipulation', 'Create simple data retrieval and manipulation statements in SQL.');
INSERT INTO SKILL
VALUES (220, 'Advanced Database Manipulation',
        'Use of advanced data manipulation methods for multi-table inserts, set operations, and correlated subqueries.');


INSERT INTO CERTIFIED
VALUES ('02345', 100, '2/14/2008');
INSERT INTO CERTIFIED
VALUES ('02345', 110, '8/9/2009');
INSERT INTO CERTIFIED
VALUES ('02345', 180, '2/14/2011');
INSERT INTO CERTIFIED
VALUES ('03373', 120, '6/20/2017');
INSERT INTO CERTIFIED
VALUES ('04893', 180, '6/11/2012');
INSERT INTO CERTIFIED
VALUES ('04893', 220, '9/20/2018');
INSERT INTO CERTIFIED
VALUES ('06234', 110, '8/10/2013');
INSERT INTO CERTIFIED
VALUES ('06234', 200, '8/10/2013');
INSERT INTO CERTIFIED
VALUES ('06234', 210, '1/29/2018');
INSERT INTO CERTIFIED
VALUES ('08273', 110, '3/8/2015');
INSERT INTO CERTIFIED
VALUES ('08273', 190, '8/19/2018');
INSERT INTO CERTIFIED
VALUES ('09002', 110, '5/16/2019');
INSERT INTO CERTIFIED
VALUES ('09002', 120, '5/16/2019');
INSERT INTO CERTIFIED
VALUES ('09382', 140, '8/2/2018');
INSERT INTO CERTIFIED
VALUES ('09382', 210, '8/2/2018');
INSERT INTO CERTIFIED
VALUES ('09382', 220, '5/1/2019');
INSERT INTO CERTIFIED
VALUES ('13383', 170, '3/12/2020');
INSERT INTO CERTIFIED
VALUES ('13567', 130, '9/30/2020');
INSERT INTO CERTIFIED
VALUES ('13567', 140, '5/23/2021');
INSERT INTO CERTIFIED
VALUES ('14311', 110, '9/1/2022');



INSERT INTO EMPLOYEESKILLS
VALUES (1, '02345', 'Johnny Jones', 'DBA', '2/14/2001', 'Basic Database Management',
        'Create and manage database user accounts.', '2/14/2008', 'Advanced Database Management',
        'Manage Database Server Clusters.', '2/14/2011', 'Basic Web Design',
        'Create and maintain HTML and CSS documents.', '8/9/2009');

INSERT INTO EMPLOYEESKILLS
VALUES (2, '08273', 'Marco Bienz', 'Analyst', '7/28/2012', 'Basic Web Design',
        'Create and maintain HTML and CSS documents.', '3/8/2015', 'Advance Process Modeling',
        'Evaluate and Redesign cross-functional internal and external business processes.', '8/19/2018', NULL, NULL,
        NULL);

INSERT INTO EMPLOYEESKILLS
VALUES (3, '06234', 'Jasmine Patel', 'Programmer', '8/10/2011', 'Basic Web Design',
        'Create and maintain HTML and CSS documents.', '8/10/2013', 'Advanced C# programming',
        'Create multi-tier applications using multi-threading', '8/10/2013', 'Basic DB manipulation',
        'Create simple data retrieval and manipulation statements in standard SQL.', '1/29/2018');

INSERT INTO EMPLOYEESKILLS
VALUES (4, '03373', 'Franklin Johnson, Jr.', 'Purchasing Agent', '3/15/2008', 'Advanced Spreadsheets',
        'Use of advanced functions, user-defined functions, and macroing.', '6/20/2017', NULL, NULL, NULL, NULL, NULL,
        NULL);

INSERT INTO EMPLOYEESKILLS
VALUES (5, '13567', 'Almond, Robert', 'Analyst', '9/30/2018', 'Basic Process Modeling',
        'Create core business process models using standard libraries.', '9/30/2020', 'Basic Database Design',
        'Create simple data models with few tables.', '5/23/2021', NULL, NULL, NULL);

INSERT INTO EMPLOYEESKILLS
VALUES (6, '10282', 'Richardson, Amanda', 'Clerk', '4/11/2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO EMPLOYEESKILLS
VALUES (7, '09382', 'Jessica Johnson', 'Database Programmer', '8/2/2016', 'Basic DB Design',
        'Create simple data models.', '8/2/2018', 'Basic Database Manipulation',
        'Create simple data retrieval and manipulation statements in SQL.', '8/2/2018', 'Advanced DB Manipulation',
        'Use of advanced data manipulation methods for multi-table inserts, set operations, and correlated subqueries',
        '5/1/2019');

INSERT INTO EMPLOYEESKILLS
VALUES (8, '14311', 'Duong, Lee', 'Programmer', '9/1/2020', 'Basic Web Design', NULL, '9/1/2022', NULL, NULL, NULL,
        NULL, NULL, NULL);

INSERT INTO EMPLOYEESKILLS
VALUES (9, NULL, NULL, NULL, NULL, 'Master Database Programming',
        'Create integrated trigger and procedure packages for a distributed environment.', NULL, NULL, NULL, NULL, NULL,
        NULL, NULL);

INSERT INTO EMPLOYEESKILLS
VALUES (10, NULL, NULL, NULL, NULL, 'Basic Spreadsheets', 'Create single tab worksheets with basic formulas', NULL,
        NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO EMPLOYEESKILLS
VALUES (11, '09002', 'Ben Joiner', 'Clerk', '5/20/2016', 'Advanced Spreadsheets',
        'Use of advanced functions, user-defined functions, and macroing.', '5/16/2019', 'Basic Web Design',
        'Create and maintain HTML, CSS.', '5/16/2019', NULL, NULL, NULL);

INSERT INTO EMPLOYEESKILLS
VALUES (12, '13383', 'Raymond F. Matthews', 'Programmer', '3/12/2018', 'Basic C# Programming',
        'Create single-tier data aware modules.', '3/12/2020', NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO EMPLOYEESKILLS
VALUES (13, '09283', 'Chavez, Juan', 'Clerk', '7/4/2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO EMPLOYEESKILLS
VALUES (14, '04893', 'Patricia Richards', 'DBA', '6/11/2010', 'Advanced Database Management',
        'Manage Database Server Clusters.', '6/11/2012', 'Advanced Database Manipulation',
        'Use of advanced data manipulation methods for multi-table inserts, set operations, and correlated subqueries.',
        '9/20/2018', NULL, NULL, NULL);

INSERT INTO EMPLOYEESKILLS
VALUES (15, '13932', 'Lee, Megan', 'Programmer', '9/29/2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


/* -- */

CREATE TABLE AGENT
(
    A_NAME    varchar(15),
    A_PHONE   varchar(12),
    A_ADDRESS varchar(20),
    ZIP       varchar(5),
    HIRED     datetime,
    YTD_PAY   numeric(10, 2),
    YTD_FIT   numeric(10, 2),
    YTD_FICA  numeric(10, 2),
    YTD_SLS   numeric(10, 2),
    DEP       int
);

INSERT INTO AGENT
VALUES ('Alex B. Alby', '713-228-1249', '123 Toll, Nash, TN', '37119', '11/1/2006', '26566.24', '6641.56', '2125.3',
        '132735.75', '3');
INSERT INTO AGENT
VALUES ('Leah F. Hahn', '615-882-1244', '334 Main, Fox, KY', '25246', '5/23/1992', '32213.76', '8053.44', '2577.1',
        '138967.35', '0');
INSERT INTO AGENT
VALUES ('John T. Okon', '615-123-5589', '452 Elm, New, TN', '36155', '6/15/2011', '23198.29', '5799.57', '1855.86',
        '127093.45', '2');

/* -- */

CREATE TABLE CUSTOMER
(
    C_NAME    varchar(20),
    C_PHONE   varchar(12),
    C_ADDRESS varchar(30),
    C_ZIP     varchar(5),
    A_NAME    varchar(20),
    A_PHONE   varchar(12),
    TP        varchar(2),
    AMT       numeric(6, 2),
    REN       datetime
);

INSERT INTO CUSTOMER
VALUES ('Alfred A. Ramas', '615-844-2573', '218 Fork Rd., Babs, TN', '36123', 'Leah F. Hahn', '615-882-1244', 'T1',
        '100', '4/5/2022');
INSERT INTO CUSTOMER
VALUES ('Leona K. Dunne', '713-894-1238', 'Box 12A, Fox, KY', '25246', 'Alex B. Alby', '713-228-1249', 'T1', '250',
        '6/16/2022');
INSERT INTO CUSTOMER
VALUES ('Kathy W. Smith', '615-894-2285', '125 Oak Ln, Babs, TN', '36123', 'Leah F. Hahn', '615-882-2144', 'S2', '150',
        '1/29/2023');
INSERT INTO CUSTOMER
VALUES ('Paul F. Olowski', '615-894-2180', '217 Lee Ln., Babs, TN', '36123', 'Leah F. Hahn', '615-882-1244', 'S1',
        '300', '10/14/2022');
INSERT INTO CUSTOMER
VALUES ('Myron Orlando', '615-222-1672', 'Box 111, New, TN', '36155', 'Alex B. Alby', '713-228-1249', 'T1', '100',
        '12/28/2022');
INSERT INTO CUSTOMER
VALUES ('Amy B. O''Brian', '713-442-3381', '387 Troll Dr., Fox, KY', '25246', 'John T. Okon', '615-123-5589', 'T2',
        '850', '9/22/2022');
INSERT INTO CUSTOMER
VALUES ('James G. Brown', '615-297-1228', '21 Tye Rd., Nash, TN', '37118', 'Leah F. Hahn', '615-882-1244', 'S1', '120',
        '3/25/2023');
INSERT INTO CUSTOMER
VALUES ('George Williams', '615-290-2556', '155 Maple, Nash, TN', '37119', 'John T. Okon', '615-123-5589', 'S1', '250',
        '7/17/2022');
INSERT INTO CUSTOMER
VALUES ('Anne G. Farriss', '713-382-7185', '2119 Elm, Crew, KY', '25432', 'Alex B. Alby', '713-228-1249', 'T2', '100',
        '12/3/2022');
INSERT INTO CUSTOMER
VALUES ('Olette K. Smith', '615-297-3809', '2782 Main, Nash, TN', '37118', 'John T. Okon', '615-123-5589', 'S2', '500',
        '3/14/2023');