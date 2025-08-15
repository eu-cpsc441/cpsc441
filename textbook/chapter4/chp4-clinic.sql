/* Database Systems, Coronel/Morris */
/* Type of SQL : SQL Server */

/* ----------------------------------
Database: Clinic
---------------------------------- */

IF
    NOT EXISTS (SELECT name
                FROM sys.databases
                WHERE name = N'cpsc441-chp4-clinic')
CREATE DATABASE [cpsc441-chp4-clinic];
GO

USE cpsc441-chp4-clinic;

IF
    NOT EXISTS (SELECT TABLE_NAME
                FROM INFORMATION_SCHEMA.TABLES
                WHERE TABLE_NAME = N'DOCTOR')
    BEGIN
        CREATE TABLE DOCTOR (
            DOC_ID varchar(5),
            DOC_LNAME varchar(15),
            DOC_FNAME varchar(15),
            DOC_INITIAL varchar(1),
            DOC_SPECIALTY varchar(15)
        );
        INSERT INTO DOCTOR VALUES('29827','Sanchez','Julio','J','Dermatology');
        INSERT INTO DOCTOR VALUES('32445','Jorgensen','Annelise','G','Neurology');
        INSERT INTO DOCTOR VALUES('33456','Korenski','Anatoly','A','Urology');
        INSERT INTO DOCTOR VALUES('33989','LeGrande','George','','Pediatrics');
        INSERT INTO DOCTOR VALUES('34409','Washington','Dennis','F','Orthopaedics');
        INSERT INTO DOCTOR VALUES('36221','McPherson','Katye','H','Dermatology');
        INSERT INTO DOCTOR VALUES('36712','Dreifag','Herman','G','Psychiatry');
        INSERT INTO DOCTOR VALUES('38995','Minh','Tran','','Neurology');
        INSERT INTO DOCTOR VALUES('40004','Chin','Ming','D','Orthopaedics');
    END
/* -- */
