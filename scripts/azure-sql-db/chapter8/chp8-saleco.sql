/* Database Systems, Coronel/Morris */
/* Type of SQL : Azure SQL Database */

USE cpsc441;
GO

CREATE SCHEMA c8_saleco;
GO

CREATE TABLE c8_saleco.CUSTOMER
(
    CUS_CODE     int,
    CUS_LNAME    varchar(15),
    CUS_FNAME    varchar(15),
    CUS_INITIAL  varchar(1),
    CUS_AREACODE varchar(3),
    CUS_PHONE    varchar(8),
    CUS_BALANCE  decimal(10, 2)
);

INSERT INTO c8_saleco.CUSTOMER
VALUES ('10010', 'Ramas', 'Alfred', 'A', '615', '844-2573', '0');
INSERT INTO c8_saleco.CUSTOMER
VALUES ('10011', 'Dunne', 'Leona', 'K', '713', '894-1238', '0');
INSERT INTO c8_saleco.CUSTOMER
VALUES ('10012', 'Smith', 'Kathy', 'W', '615', '894-2285', '345.86');
INSERT INTO c8_saleco.CUSTOMER
VALUES ('10013', 'Olowski', 'Paul', 'F', '615', '894-2180', '536.75');
INSERT INTO c8_saleco.CUSTOMER
VALUES ('10014', 'Orlando', 'Myron', '', '615', '222-1672', '0');
INSERT INTO c8_saleco.CUSTOMER
VALUES ('10015', 'O''Brian', 'Amy', 'B', '713', '442-3381', '0');
INSERT INTO c8_saleco.CUSTOMER
VALUES ('10016', 'Brown', 'James', 'G', '615', '297-1228', '221.19');
INSERT INTO c8_saleco.CUSTOMER
VALUES ('10017', 'Williams', 'George', '', '615', '290-2556', '768.93');
INSERT INTO c8_saleco.CUSTOMER
VALUES ('10018', 'Farriss', 'Anne', 'G', '713', '382-7185', '216.55');
INSERT INTO c8_saleco.CUSTOMER
VALUES ('10019', 'Smith', 'Olette', 'K', '615', '297-3809', '0');

CREATE TABLE c8_saleco.CUSTOMER_2
(
    CUS_CODE     int,
    CUS_LNAME    VARCHAR(15) NOT NULL,
    CUS_FNAME    VARCHAR(15) NOT NULL,
    CUS_INITIAL  CHAR(1),
    CUS_AREACODE CHAR(3),
    CUS_PHONE    CHAR(8)
);

INSERT INTO c8_saleco.CUSTOMER_2
VALUES (345, 'Terrell', 'Justine', 'H', '615', '322-9870');
INSERT INTO c8_saleco.CUSTOMER_2
VALUES (347, 'Olowski', 'Paul', 'F', '615', '894-2180');
INSERT INTO c8_saleco.CUSTOMER_2
VALUES (351, 'Hernandez', 'Carlos', 'J', '723', '123-7654');
INSERT INTO c8_saleco.CUSTOMER_2
VALUES (352, 'McDowell', 'George', NULL, '723', '123-7768');
INSERT INTO c8_saleco.CUSTOMER_2
VALUES (365, 'Tirpin', 'Khaleed', 'G', '723', '123-9876');
INSERT INTO c8_saleco.CUSTOMER_2
VALUES (368, 'Lewis', 'Marie', 'J', '734', '332-1789');
INSERT INTO c8_saleco.CUSTOMER_2
VALUES (369, 'Dunne', 'Leona', 'K', '713', '894-1238');

/* -- */

CREATE TABLE c8_saleco.EMP
(
    EMP_NUM       int,
    EMP_TITLE     varchar(4),
    EMP_LNAME     varchar(15),
    EMP_FNAME     varchar(15),
    EMP_INITIAL   varchar(1),
    EMP_DOB       datetime,
    EMP_HIRE_DATE datetime,
    EMP_AREACODE  varchar(3),
    EMP_PHONE     varchar(8),
    EMP_MGR       int
);

INSERT INTO c8_saleco.EMP
VALUES ('100', 'Mr.', 'Kolmycz', 'George', 'D', '6/15/1952', '3/15/1995', '615', '324-5456', '');
INSERT INTO c8_saleco.EMP
VALUES ('101', 'Ms.', 'Lewis', 'Rhonda', 'G', '3/19/1975', '4/25/1996', '615', '324-4472', '100');
INSERT INTO c8_saleco.EMP
VALUES ('102', 'Mr.', 'VanDam', 'Rhett', '', '11/14/1968', '12/20/2000', '901', '675-8993', '100');
INSERT INTO c8_saleco.EMP
VALUES ('103', 'Ms.', 'Jones', 'Anne', 'M', '10/16/1984', '8/28/2004', '615', '898-3456', '100');
INSERT INTO c8_saleco.EMP
VALUES ('104', 'Mr.', 'Lange', 'John', 'P', '11/8/1981', '10/20/2004', '901', '504-4430', '105');
INSERT INTO c8_saleco.EMP
VALUES ('105', 'Mr.', 'Williams', 'Robert', 'D', '3/14/1985', '11/8/2008', '615', '890-3220', '');
INSERT INTO c8_saleco.EMP
VALUES ('106', 'Mrs.', 'Smith', 'Jeanine', 'K', '2/12/1978', '1/5/1999', '615', '324-7883', '105');
INSERT INTO c8_saleco.EMP
VALUES ('107', 'Mr.', 'Diante', 'Jorge', 'D', '8/21/1984', '7/2/2004', '615', '890-4567', '105');
INSERT INTO c8_saleco.EMP
VALUES ('108', 'Mr.', 'Wiesenbach', 'Paul', 'R', '2/14/1976', '11/18/2002', '615', '897-4358', '');
INSERT INTO c8_saleco.EMP
VALUES ('109', 'Mr.', 'Smith', 'George', 'K', '6/18/1971', '4/14/1999', '901', '504-3339', '108');
INSERT INTO c8_saleco.EMP
VALUES ('110', 'Mrs.', 'Genkazi', 'Leighla', 'W', '5/19/1980', '12/1/2000', '901', '569-0093', '108');
INSERT INTO c8_saleco.EMP
VALUES ('111', 'Mr.', 'Washington', 'Rupert', 'E', '1/3/1976', '6/21/2003', '615', '890-4925', '105');
INSERT INTO c8_saleco.EMP
VALUES ('112', 'Mr.', 'Johnson', 'Edward', 'E', '5/14/1971', '12/1/1993', '615', '898-4387', '100');
INSERT INTO c8_saleco.EMP
VALUES ('113', 'Ms.', 'Smythe', 'Melanie', 'P', '9/15/1980', '5/11/2009', '615', '324-9006', '105');
INSERT INTO c8_saleco.EMP
VALUES ('114', 'Ms.', 'Brandon', 'Marie', 'G', '11/2/1966', '11/15/1989', '901', '882-0845', '108');
INSERT INTO c8_saleco.EMP
VALUES ('115', 'Mrs.', 'Saranda', 'Hermine', 'R', '7/25/1982', '4/23/2003', '615', '324-5505', '105');
INSERT INTO c8_saleco.EMP
VALUES ('116', 'Mr.', 'Smith', 'George', 'A', '11/8/1975', '12/10/1998', '615', '890-2984', '108');

/* -- */

CREATE TABLE c8_saleco.EMPLOYEE
(
    EMP_NUM       int,
    EMP_TITLE     varchar(4),
    EMP_LNAME     varchar(15),
    EMP_FNAME     varchar(15),
    EMP_INITIAL   varchar(1),
    EMP_DOB       datetime,
    EMP_HIRE_DATE datetime,
    EMP_AREACODE  varchar(3),
    EMP_PHONE     varchar(8)
);

INSERT INTO c8_saleco.EMPLOYEE
VALUES ('100', 'Mr.', 'Kolmycz', 'George', 'D', '6/15/1952', '3/15/1995', '615', '324-5456');
INSERT INTO c8_saleco.EMPLOYEE
VALUES ('101', 'Ms.', 'Lewis', 'Rhonda', 'G', '3/19/1975', '4/25/1996', '615', '324-4472');
INSERT INTO c8_saleco.EMPLOYEE
VALUES ('102', 'Mr.', 'VanDam', 'Rhett', '', '11/14/1968', '12/20/2000', '901', '675-8993');
INSERT INTO c8_saleco.EMPLOYEE
VALUES ('103', 'Ms.', 'Jones', 'Anne', 'M', '10/16/1984', '8/28/2004', '615', '898-3456');
INSERT INTO c8_saleco.EMPLOYEE
VALUES ('104', 'Mr.', 'Lange', 'John', 'P', '11/8/1981', '10/20/2004', '901', '504-4430');
INSERT INTO c8_saleco.EMPLOYEE
VALUES ('105', 'Mr.', 'Williams', 'Robert', 'D', '3/14/1985', '11/8/2008', '615', '890-3220');
INSERT INTO c8_saleco.EMPLOYEE
VALUES ('106', 'Mrs.', 'Smith', 'Jeanine', 'K', '2/12/1978', '1/5/1999', '615', '324-7883');
INSERT INTO c8_saleco.EMPLOYEE
VALUES ('107', 'Mr.', 'Diante', 'Jorge', 'D', '8/21/1984', '7/2/2004', '615', '890-4567');
INSERT INTO c8_saleco.EMPLOYEE
VALUES ('108', 'Mr.', 'Wiesenbach', 'Paul', 'R', '2/14/1976', '11/18/2002', '615', '897-4358');
INSERT INTO c8_saleco.EMPLOYEE
VALUES ('109', 'Mr.', 'Smith', 'George', 'K', '6/18/1971', '4/14/1999', '901', '504-3339');
INSERT INTO c8_saleco.EMPLOYEE
VALUES ('110', 'Mrs.', 'Genkazi', 'Leighla', 'W', '5/19/1980', '12/1/2000', '901', '569-0093');
INSERT INTO c8_saleco.EMPLOYEE
VALUES ('111', 'Mr.', 'Washington', 'Rupert', 'E', '1/3/1976', '6/21/2003', '615', '890-4925');
INSERT INTO c8_saleco.EMPLOYEE
VALUES ('112', 'Mr.', 'Johnson', 'Edward', 'E', '5/14/1971', '12/1/1993', '615', '898-4387');
INSERT INTO c8_saleco.EMPLOYEE
VALUES ('113', 'Ms.', 'Smythe', 'Melanie', 'P', '9/15/1980', '5/11/2009', '615', '324-9006');
INSERT INTO c8_saleco.EMPLOYEE
VALUES ('114', 'Ms.', 'Brandon', 'Marie', 'G', '11/2/1966', '11/15/1989', '901', '882-0845');
INSERT INTO c8_saleco.EMPLOYEE
VALUES ('115', 'Mrs.', 'Saranda', 'Hermine', 'R', '7/25/1982', '4/23/2003', '615', '324-5505');
INSERT INTO c8_saleco.EMPLOYEE
VALUES ('116', 'Mr.', 'Smith', 'George', 'A', '11/8/1975', '12/10/1998', '615', '890-2984');

/* -- */

CREATE TABLE c8_saleco.INVOICE
(
    INV_NUMBER int,
    CUS_CODE   int,
    INV_DATE   datetime
);

INSERT INTO c8_saleco.INVOICE
VALUES ('1001', '10014', '1/16/2022');
INSERT INTO c8_saleco.INVOICE
VALUES ('1002', '10011', '1/16/2022');
INSERT INTO c8_saleco.INVOICE
VALUES ('1003', '10012', '1/16/2022');
INSERT INTO c8_saleco.INVOICE
VALUES ('1004', '10011', '1/17/2022');
INSERT INTO c8_saleco.INVOICE
VALUES ('1005', '10018', '1/17/2022');
INSERT INTO c8_saleco.INVOICE
VALUES ('1006', '10014', '1/17/2022');
INSERT INTO c8_saleco.INVOICE
VALUES ('1007', '10015', '1/17/2022');
INSERT INTO c8_saleco.INVOICE
VALUES ('1008', '10011', '1/17/2022');

/* -- */

CREATE TABLE c8_saleco.LINE
(
    INV_NUMBER  int,
    LINE_NUMBER int,
    P_CODE      varchar(10),
    LINE_UNITS  int,
    LINE_PRICE  decimal(10, 2)
);

INSERT INTO c8_saleco.LINE
VALUES ('1001', '1', '13-Q2/P2', '1', '14.99');
INSERT INTO c8_saleco.LINE
VALUES ('1001', '2', '23109-HB', '1', '9.95');
INSERT INTO c8_saleco.LINE
VALUES ('1002', '1', '54778-2T', '2', '4.99');
INSERT INTO c8_saleco.LINE
VALUES ('1003', '1', '2238/QPD', '1', '38.95');
INSERT INTO c8_saleco.LINE
VALUES ('1003', '2', '1546-QQ2', '1', '39.95');
INSERT INTO c8_saleco.LINE
VALUES ('1003', '3', '13-Q2/P2', '5', '14.99');
INSERT INTO c8_saleco.LINE
VALUES ('1004', '1', '54778-2T', '3', '4.99');
INSERT INTO c8_saleco.LINE
VALUES ('1004', '2', '23109-HB', '2', '9.95');
INSERT INTO c8_saleco.LINE
VALUES ('1005', '1', 'PVC23DRT', '12', '5.87');
INSERT INTO c8_saleco.LINE
VALUES ('1006', '1', 'SM-18277', '3', '6.99');
INSERT INTO c8_saleco.LINE
VALUES ('1006', '2', '2232/QTY', '1', '109.92');
INSERT INTO c8_saleco.LINE
VALUES ('1006', '3', '23109-HB', '1', '9.95');
INSERT INTO c8_saleco.LINE
VALUES ('1006', '4', '89-WRE-Q', '1', '256.99');
INSERT INTO c8_saleco.LINE
VALUES ('1007', '1', '13-Q2/P2', '2', '14.99');
INSERT INTO c8_saleco.LINE
VALUES ('1007', '2', '54778-2T', '1', '4.99');
INSERT INTO c8_saleco.LINE
VALUES ('1008', '1', 'PVC23DRT', '5', '5.87');
INSERT INTO c8_saleco.LINE
VALUES ('1008', '2', 'WR3/TT3', '3', '119.95');
INSERT INTO c8_saleco.LINE
VALUES ('1008', '3', '23109-HB', '1', '9.95');

/* -- */
CREATE TABLE c8_saleco.PRODUCT
(
    P_CODE     varchar(10),
    P_DESCRIPT varchar(35),
    P_INDATE   datetime,
    P_QOH      int,
    P_MIN      int,
    P_PRICE    decimal(10, 2),
    P_DISCOUNT decimal(3, 2),
    V_CODE     int
);

INSERT INTO c8_saleco.PRODUCT
VALUES ('11QER/31', 'Power painter, 15 psi., 3-nozzle', '11/3/2021', '8', '5', '109.99', '0', '25595');
INSERT INTO c8_saleco.PRODUCT
VALUES ('13-Q2/P2', '7.25-in. pwr. saw blade', '12/13/2021', '32', '15', '14.99', '0.05', '21344');
INSERT INTO c8_saleco.PRODUCT
VALUES ('14-Q1/L3', '9.00-in. pwr. saw blade', '11/13/2021', '18', '12', '17.49', '0', '21344');
INSERT INTO c8_saleco.PRODUCT
VALUES ('1546-QQ2', 'Hrd. cloth, 1/4-in., 2x50', '1/15/2022', '15', '8', '39.95', '0', '23119');
INSERT INTO c8_saleco.PRODUCT
VALUES ('1558-QW1', 'Hrd. cloth, 1/2-in., 3x50', '1/15/2022', '23', '5', '43.99', '0', '23119');
INSERT INTO c8_saleco.PRODUCT
VALUES ('2232/QTY', 'B\&D jigsaw, 12-in. blade', '12/30/2021', '8', '5', '109.92', '0.05', '24288');
INSERT INTO c8_saleco.PRODUCT
VALUES ('2232/QWE', 'B\&D jigsaw, 8-in. blade', '12/24/2021', '6', '5', '99.87', '0.05', '24288');
INSERT INTO c8_saleco.PRODUCT
VALUES ('2238/QPD', 'B\&D cordless drill, 1/2-in.', '1/20/2022', '12', '5', '38.95', '0.05', '25595');
INSERT INTO c8_saleco.PRODUCT
VALUES ('23109-HB', 'Claw hammer', '1/20/2022', '23', '10', '9.95', '0.1', '21225');
INSERT INTO c8_saleco.PRODUCT
VALUES ('23114-AA', 'Sledge hammer, 12 lb.', '1/2/2022', '8', '5', '14.40', '0.05', '');
INSERT INTO c8_saleco.PRODUCT
VALUES ('54778-2T', 'Rat-tail file, 1/8-in. fine', '12/15/2021', '43', '20', '4.99', '0', '21344');
INSERT INTO c8_saleco.PRODUCT
VALUES ('89-WRE-Q', 'Hicut chain saw, 16 in.', '2/7/2022', '11', '5', '256.99', '0.05', '24288');
INSERT INTO c8_saleco.PRODUCT
VALUES ('PVC23DRT', 'PVC pipe, 3.5-in., 8-ft', '2/20/2022', '188', '75', '5.87', '0', '');
INSERT INTO c8_saleco.PRODUCT
VALUES ('SM-18277', '1.25-in. metal screw, 25', '3/1/2022', '172', '75', '6.99', '0', '21225');
INSERT INTO c8_saleco.PRODUCT
VALUES ('SW-23116', '2.5-in. wd. screw, 50', '2/24/2022', '237', '100', '8.45', '0', '21231');
INSERT INTO c8_saleco.PRODUCT
VALUES ('WR3/TT3', 'Steel matting, 4''x8''x1/6", .5" mesh', '1/17/2022', '18', '5', '119.95', '0.1', '25595');

/* -- */

CREATE TABLE c8_saleco.VENDOR
(
    V_CODE     int,
    V_NAME     varchar(15),
    V_CONTACT  varchar(50),
    V_AREACODE varchar(3),
    V_PHONE    varchar(8),
    V_STATE    varchar(2),
    V_ORDER    varchar(1)
);

INSERT INTO c8_saleco.VENDOR
VALUES ('21225', 'Bryson, Inc.', 'Smithson', '615', '223-3234', 'TN', 'Y');
INSERT INTO c8_saleco.VENDOR
VALUES ('21226', 'SuperLoo, Inc.', 'Flushing', '904', '215-8995', 'FL', 'N');
INSERT INTO c8_saleco.VENDOR
VALUES ('21231', 'D&E Supply', 'Singh', '615', '228-3245', 'TN', 'Y');
INSERT INTO c8_saleco.VENDOR
VALUES ('21344', 'Gomez Bros.', 'Ortega', '615', '889-2546', 'KY', 'N');
INSERT INTO c8_saleco.VENDOR
VALUES ('22567', 'Dome Supply', 'Smith', '901', '678-1419', 'GA', 'N');
INSERT INTO c8_saleco.VENDOR
VALUES ('23119', 'Randsets Ltd.', 'Anderson', '901', '678-3998', 'GA', 'Y');
INSERT INTO c8_saleco.VENDOR
VALUES ('24004', 'Brackman Bros.', 'Browning', '615', '228-1410', 'TN', 'N');
INSERT INTO c8_saleco.VENDOR
VALUES ('24288', 'ORDVA, Inc.', 'Hakford', '615', '898-1234', 'TN', 'Y');
INSERT INTO c8_saleco.VENDOR
VALUES ('25443', 'B&K, Inc.', 'Smith', '904', '227-0093', 'FL', 'N');
INSERT INTO c8_saleco.VENDOR
VALUES ('25501', 'Damal Supplies', 'Smythe', '615', '890-3529', 'TN', 'N');
INSERT INTO c8_saleco.VENDOR
VALUES ('25595', 'Rubicon Systems', 'Orton', '904', '456-0092', 'FL', 'Y');
