/* Database Systems, Coronel/Morris */
/* Type of SQL : Azure SQL Database */

USE cpsc441;
GO

CREATE SCHEMA c3_vendingco;
GO

CREATE TABLE c3_vendingco.BOOTH
(
    BOOTH_PRODUCT varchar(50),
    BOOTH_PRICE   numeric
);

INSERT INTO c3_vendingco.BOOTH VALUES ('Chips', '1.5');
INSERT INTO c3_vendingco.BOOTH VALUES ('Cola', '1.25');
INSERT INTO c3_vendingco.BOOTH VALUES ('Energy Drink', '2');

/* -- */

CREATE TABLE c3_vendingco.MACHINE
(
    MACHINE_PRODUCT varchar(50),
    MACHINE_PRICE   numeric
);

INSERT INTO c3_vendingco.MACHINE VALUES ('Chips', '1.25');

/* -- */
