/* Database Systems, Coronel/Morris */
/* Type of SQL : Azure SQL Database */

USE cpsc441;
GO

CREATE SCHEMA c4_clinic;
GO

CREATE TABLE c4_clinic.DOCTOR
(
    DOC_ID        varchar(5),
    DOC_LNAME     varchar(15),
    DOC_FNAME     varchar(15),
    DOC_INITIAL   varchar(1),
    DOC_SPECIALTY varchar(15)
);

INSERT INTO c4_clinic.DOCTOR VALUES ('29827', 'Sanchez', 'Julio', 'J', 'Dermatology');
INSERT INTO c4_clinic.DOCTOR VALUES ('32445', 'Jorgensen', 'Annelise', 'G', 'Neurology');
INSERT INTO c4_clinic.DOCTOR VALUES ('33456', 'Korenski', 'Anatoly', 'A', 'Urology');
INSERT INTO c4_clinic.DOCTOR VALUES ('33989', 'LeGrande', 'George', '', 'Pediatrics');
INSERT INTO c4_clinic.DOCTOR VALUES ('34409', 'Washington', 'Dennis', 'F', 'Orthopaedics');
INSERT INTO c4_clinic.DOCTOR VALUES ('36221', 'McPherson', 'Katye', 'H', 'Dermatology');
INSERT INTO c4_clinic.DOCTOR VALUES ('36712', 'Dreifag', 'Herman', 'G', 'Psychiatry');
INSERT INTO c4_clinic.DOCTOR VALUES ('38995', 'Minh', 'Tran', '', 'Neurology');
INSERT INTO c4_clinic.DOCTOR VALUES ('40004', 'Chin', 'Ming', 'D', 'Orthopaedics');

/* -- */
