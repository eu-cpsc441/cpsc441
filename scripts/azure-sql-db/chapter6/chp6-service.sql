/* Database Systems, Coronel/Morris */
/* Type of SQL : Azure SQL Database */

USE cpsc441;
GO

CREATE SCHEMA c6_service;
GO

CREATE TABLE c6_service.CUSTOMER
(
    CUS_CODE    varchar(3),
    CUS_LNAME   varchar(15),
    CUS_FNAME   varchar(15),
    CUS_INITIAL varchar(1),
    CUS_AREACODE varchar(3),
    CUS_PHONE   varchar(8),
    CUS_BALANCE decimal(8, 2)
);

INSERT INTO c6_service.CUSTOMER VALUES ('100', 'Ramas', 'Alfred', 'A', '615', '844-2573', 0);
INSERT INTO c6_service.CUSTOMER VALUES ('101', 'Smith', 'Tom', 'E', '615', '894-2285', 345.86);
INSERT INTO c6_service.CUSTOMER VALUES ('102', 'Olowski', 'Paul', 'F', '615', '894-2180', 536.75);
INSERT INTO c6_service.CUSTOMER VALUES ('103', 'Orlando', 'Myron', '', '615', '222-1672', 0);
INSERT INTO c6_service.CUSTOMER VALUES ('104', 'Brown', 'James', 'G', '615', '297-1228', 221.19);

/* -- */
