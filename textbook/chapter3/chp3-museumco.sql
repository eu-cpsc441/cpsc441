/* Database Systems, Coronel/Morris */
/* Type of SQL : SQL Server */

/* ----------------------------------
Database: MuseumCo
---------------------------------- */

IF
    NOT EXISTS (SELECT name
                FROM sys.databases
                WHERE name = N'cpsc441-chp3-museumco')
CREATE DATABASE [cpsc441-chp3-museumco];
GO

USE cpsc441-chp3-museumco;

IF
    NOT EXISTS (SELECT TABLE_NAME
                FROM INFORMATION_SCHEMA.TABLES
                WHERE TABLE_NAME = N'PAINTER')
    BEGIN
        CREATE TABLE PAINTER (
            PAINTER_NUM int,
            PAINTER_LNAME varchar(15),
            PAINTER_FNAME varchar(15),
            PAINTER_INITIAL varchar(1)
        );
        INSERT INTO PAINTER VALUES('123','Ross','Georgette','P');
        INSERT INTO PAINTER VALUES('126','Itero','Julio','G');
    END
/* -- */

IF
    NOT EXISTS (SELECT TABLE_NAME
                FROM INFORMATION_SCHEMA.TABLES
                WHERE TABLE_NAME = N'PAINTING')
    BEGIN
        CREATE TABLE PAINTING (
            PAINTING_NUM int,
            PAINTING_TITLE varchar(50),
            PAINTER_NUM int
        );
        INSERT INTO PAINTING VALUES('1338','Dawn Thunder','123');
        INSERT INTO PAINTING VALUES('1339','Vanilla Roses To Nowhere','123');
        INSERT INTO PAINTING VALUES('1340','Tired Flounders','126');
        INSERT INTO PAINTING VALUES('1341','Hasty Exit','123');
        INSERT INTO PAINTING VALUES('1342','Plastic Paradise','126');
    END
/* -- */
