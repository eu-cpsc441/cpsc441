/* Database Systems, Coronel/Morris */
/* Type of SQL : SQL Server */

/* ----------------------------------
Database: ConstructCo
---------------------------------- */

IF
    NOT EXISTS (SELECT name
                FROM sys.databases
                WHERE name = N'cpsc441_chp7_constructco')
CREATE DATABASE [cpsc441_chp7_constructco];
GO

USE cpsc441_chp7_constructco;

IF
    NOT EXISTS (SELECT TABLE_NAME
                FROM INFORMATION_SCHEMA.TABLES
                WHERE TABLE_NAME = N'ASSIGNMENT')
    BEGIN
        CREATE TABLE ASSIGNMENT
        (
            ASSIGN_NUM    int,
            ASSIGN_DATE   datetime,
            PROJ_NUM      varchar(3),
            EMP_NUM       varchar(3),
            ASSIGN_JOB    varchar(3),
            ASSIGN_CHG_HR numeric(8, 2),
            ASSIGN_HOURS  numeric(8, 2),
            ASSIGN_CHARGE numeric(8, 2)
        );
        INSERT INTO ASSIGNMENT VALUES ('1001', '3/22/2022', '18', '103', '503', '84.5', '3.5', '295.75');
        INSERT INTO ASSIGNMENT VALUES ('1002', '3/22/2022', '22', '117', '509', '34.55', '4.2', '145.11');
        INSERT INTO ASSIGNMENT VALUES ('1003', '3/22/2022', '18', '117', '509', '34.55', '2', '69.10');
        INSERT INTO ASSIGNMENT VALUES ('1004', '3/22/2022', '18', '103', '503', '84.5', '5.9', '498.55');
        INSERT INTO ASSIGNMENT VALUES ('1005', '3/22/2022', '25', '108', '501', '96.75', '2.2', '212.85');
        INSERT INTO ASSIGNMENT VALUES ('1006', '3/22/2022', '22', '104', '501', '96.75', '4.2', '406.35');
        INSERT INTO ASSIGNMENT VALUES ('1007', '3/22/2022', '25', '113', '508', '50.75', '3.8', '192.85');
        INSERT INTO ASSIGNMENT VALUES ('1008', '3/22/2022', '18', '103', '503', '84.5', '0.9', '76.05');
        INSERT INTO ASSIGNMENT VALUES ('1009', '3/23/2022', '15', '115', '501', '96.75', '5.6', '541.80');
        INSERT INTO ASSIGNMENT VALUES ('1010', '3/23/2022', '15', '117', '509', '34.55', '2.4', '82.92');
        INSERT INTO ASSIGNMENT VALUES ('1011', '3/23/2022', '25', '105', '502', '105', '4.3', '451.5');
        INSERT INTO ASSIGNMENT VALUES ('1012', '3/23/2022', '18', '108', '501', '96.75', '3.4', '328.95');
        INSERT INTO ASSIGNMENT VALUES ('1013', '3/23/2022', '25', '115', '501', '96.75', '2', '193.5');
        INSERT INTO ASSIGNMENT VALUES ('1014', '3/23/2022', '22', '104', '501', '96.75', '2.8', '270.9');
        INSERT INTO ASSIGNMENT VALUES ('1015', '3/23/2022', '15', '103', '503', '84.5', '6.1', '515.45');
        INSERT INTO ASSIGNMENT VALUES ('1016', '3/23/2022', '22', '105', '502', '105', '4.7', '493.5');
        INSERT INTO ASSIGNMENT VALUES ('1017', '3/23/2022', '18', '117', '509', '34.55', '3.8', '131.29');
        INSERT INTO ASSIGNMENT VALUES ('1018', '3/23/2022', '25', '117', '509', '34.55', '2.2', '76.01');
        INSERT INTO ASSIGNMENT VALUES ('1019', '3/24/2022', '25', '104', '501', '110.5', '4.9', '541.45');
        INSERT INTO ASSIGNMENT VALUES ('1020', '3/24/2022', '15', '101', '502', '125', '3.1', '387.5');
        INSERT INTO ASSIGNMENT VALUES ('1021', '3/24/2022', '22', '108', '501', '110.5', '2.7', '298.35');
        INSERT INTO ASSIGNMENT VALUES ('1022', '3/24/2022', '22', '115', '501', '110.5', '4.9', '541.45');
        INSERT INTO ASSIGNMENT VALUES ('1023', '3/24/2022', '22', '105', '502', '125', '3.5', '437.5');
        INSERT INTO ASSIGNMENT VALUES ('1024', '3/24/2022', '15', '103', '503', '84.5', '3.3', '278.85');
        INSERT INTO ASSIGNMENT VALUES ('1025', '3/24/2022', '18', '117', '509', '34.55', '4.2', '145.11');

    END
/* -- */

IF
    NOT EXISTS (SELECT TABLE_NAME
                FROM INFORMATION_SCHEMA.TABLES
                WHERE TABLE_NAME = N'EMPLOYEE')
    BEGIN
        CREATE TABLE EMPLOYEE
        (
            EMP_NUM      varchar(3),
            EMP_LNAME    varchar(15),
            EMP_FNAME    varchar(15),
            EMP_INITIAL  varchar(1),
            EMP_HIREDATE datetime,
            JOB_CODE     varchar(3),
            EMP_YEARS    int
        );
        INSERT INTO EMPLOYEE VALUES ('101', 'News', 'John', 'G', '11/8/2004', '502', '4');
        INSERT INTO EMPLOYEE VALUES ('102', 'Senior', 'David', 'H', '7/12/1993', '501', '15');
        INSERT INTO EMPLOYEE VALUES ('103', 'Arbough', 'June', 'E', '12/1/2000', '500', '8');
        INSERT INTO EMPLOYEE VALUES ('104', 'Ramoras', 'Anne', 'K', '11/15/1991', '501', '17');
        INSERT INTO EMPLOYEE VALUES ('105', 'Johnson', 'Alice', 'K', '2/1/1997', '502', '12');
        INSERT INTO EMPLOYEE VALUES ('106', 'Smithfield', 'William', '', '6/22/2008', '500', '0');
        INSERT INTO EMPLOYEE VALUES ('107', 'Alonzo', 'Maria', 'D', '10/10/1997', '500', '11');
        INSERT INTO EMPLOYEE VALUES ('108', 'Washington', 'Ralph', 'B', '8/22/1995', '501', '13');
        INSERT INTO EMPLOYEE VALUES ('109', 'Smith', 'Larry', 'W', '7/18/2001', '501', '7');
        INSERT INTO EMPLOYEE VALUES ('110', 'Olenko', 'Gerald', 'A', '12/11/1999', '505', '9');
        INSERT INTO EMPLOYEE VALUES ('111', 'Wabash', 'Geoff', 'B', '4/4/1995', '506', '14');
        INSERT INTO EMPLOYEE VALUES ('112', 'Smithson', 'Darlene', 'M', '10/23/1998', '507', '10');
        INSERT INTO EMPLOYEE VALUES ('113', 'Joenbrood', 'Delbert', 'K', '11/15/2000', '508', '8');
        INSERT INTO EMPLOYEE VALUES ('114', 'Jones', 'Annelise', '', '8/20/1997', '508', '11');
        INSERT INTO EMPLOYEE VALUES ('115', 'Bawangi', 'Travis', 'B', '1/25/1996', '501', '13');
        INSERT INTO EMPLOYEE VALUES ('116', 'Pratt', 'Gerald', 'L', '3/5/2001', '510', '8');
        INSERT INTO EMPLOYEE VALUES ('117', 'Williamson', 'Angie', 'H', '6/19/2000', '509', '8');
        INSERT INTO EMPLOYEE VALUES ('118', 'Frommer', 'James', 'J', '1/4/2009', '510', '0');


    END
/* -- */

IF
    NOT EXISTS (SELECT TABLE_NAME
                FROM INFORMATION_SCHEMA.TABLES
                WHERE TABLE_NAME = N'JOB')
    BEGIN
        CREATE TABLE JOB
        (
            JOB_CODE        varchar(3),
            JOB_DESCRIPTION varchar(25),
            JOB_CHG_HOUR    numeric(8, 2),
            JOB_LAST_UPDATE datetime
        );
        INSERT INTO JOB VALUES ('500', 'Programmer', '35.75', '11/20/2021');
        INSERT INTO JOB VALUES ('501', 'Systems Analyst', '96.75', '11/20/2021');
        INSERT INTO JOB VALUES ('502', 'Database Designer', '125', '3/24/2022');
        INSERT INTO JOB VALUES ('503', 'Electrical Engineer', '84.5', '11/20/2021');
        INSERT INTO JOB VALUES ('504', 'Mechanical Engineer', '67.9', '11/20/2021');
        INSERT INTO JOB VALUES ('505', 'Civil Engineer', '55.78', '11/20/2021');
        INSERT INTO JOB VALUES ('506', 'Clerical Support', '26.87', '11/20/2021');
        INSERT INTO JOB VALUES ('507', 'DSS Analyst', '45.95', '11/20/2021');
        INSERT INTO JOB VALUES ('508', 'Applications Designer', '48.1', '3/24/2022');
        INSERT INTO JOB VALUES ('509', 'Bio Technician', '34.55', '11/20/2021');
        INSERT INTO JOB VALUES ('510', 'General Support', '18.36', '11/20/2021');


    END
/* -- */

IF
    NOT EXISTS (SELECT TABLE_NAME
                FROM INFORMATION_SCHEMA.TABLES
                WHERE TABLE_NAME = N'PROJECT')
    BEGIN
        CREATE TABLE PROJECT
        (
            PROJ_NUM     varchar(3),
            PROJ_NAME    varchar(25),
            PROJ_VALUE   numeric(10, 2),
            PROJ_BALANCE numeric(10, 2),
            EMP_NUM      varchar(3)
        );
        INSERT INTO PROJECT VALUES ('15', 'Evergreen', '1453500', '1002350', '103');
        INSERT INTO PROJECT VALUES ('18', 'Amber Wave', '3500500', '2110346', '108');
        INSERT INTO PROJECT VALUES ('22', 'Rolling Tide', '805000', '500345.2', '102');
        INSERT INTO PROJECT VALUES ('25', 'Starflight', '2650500', '2309880', '107');

    END
/* -- */
