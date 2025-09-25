/* Database Systems, Coronel/Morris */
/* Type of SQL : Azure SQL Database */

USE cpsc441;
GO

CREATE SCHEMA c4_shortco;
GO

CREATE TABLE c4_shortco.INVOICE
(
    INV_NUMBER int,
    INV_DATE   date,
    INV_AMOUNT decimal(8, 2)
);

INSERT INTO c4_shortco.INVOICE VALUES (1, '1/1/2022', 1000);
INSERT INTO c4_shortco.INVOICE VALUES (2, '1/2/2022', 2000);
INSERT INTO c4_shortco.INVOICE VALUES (3, '1/3/2022', 3000);
INSERT INTO c4_shortco.INVOICE VALUES (4, '1/4/2022', 4000);
INSERT INTO c4_shortco.INVOICE VALUES (5, '1/5/2022', 5000);

/* -- */
