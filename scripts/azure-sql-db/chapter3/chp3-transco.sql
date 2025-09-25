/* Database Systems, Coronel/Morris */
/* Type of SQL : Azure SQL Database */

USE cpsc441;
GO

CREATE SCHEMA c3_transco;
GO

CREATE TABLE c3_transco.BASE
(
    BASE_CODE      int,
    BASE_CITY      varchar(20),
    BASE_STATE     varchar(2),
    BASE_AREA_CODE varchar(3),
    BASE_PHONE     varchar(8),
    BASE_MANAGER   varchar(25)
);

INSERT INTO c3_transco.BASE VALUES ('501', 'Murfreesboro', 'TN', '615', '123-4567', 'Andrea D. Gallager');
INSERT INTO c3_transco.BASE VALUES ('502', 'Lexington', 'KY', '568', '234-5678', 'George H. Delarosa');
INSERT INTO c3_transco.BASE VALUES ('503', 'Cape Girardeau', 'MO', '456', '345-6789', 'Maria J. Talindo');
INSERT INTO c3_transco.BASE VALUES ('504', 'Dalton', 'GA', '901', '456-7890', 'Peter F. McAvee');

/* -- */

CREATE TABLE c3_transco.TRUCK
(
    TRUCK_NUM varchar(10),
    BASE_CODE int
);

INSERT INTO c3_transco.TRUCK VALUES ('1', '501');
INSERT INTO c3_transco.TRUCK VALUES ('2', '501');
INSERT INTO c3_transco.TRUCK VALUES ('3', '502');
INSERT INTO c3_transco.TRUCK VALUES ('4', '502');
INSERT INTO c3_transco.TRUCK VALUES ('5', '503');
INSERT INTO c3_transco.TRUCK VALUES ('6', '503');
INSERT INTO c3_transco.TRUCK VALUES ('7', '504');
INSERT INTO c3_transco.TRUCK VALUES ('8', '504');

/* -- */
