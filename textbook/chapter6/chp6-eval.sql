/* Database Systems, Coronel/Morris */
/* Type of SQL : SQL Server */

/* ----------------------------------
Database: Eval
---------------------------------- */

IF
    NOT EXISTS (SELECT name
                FROM sys.databases
                WHERE name = N'cpsc441-chp6-eval')
CREATE DATABASE [cpsc441-chp6-eval];
GO

USE cpsc441-chp6-eval;

IF
    NOT EXISTS (SELECT TABLE_NAME
                FROM INFORMATION_SCHEMA.TABLES
                WHERE TABLE_NAME = N'EVALUATION')
    BEGIN
        CREATE TABLE EVALUATION (
            EVAL_NUM int,
            STU_NUM varchar(5),
            EVAL_Q1 int,
            EVAL_Q2 int,
            EVAL_Q3 int,
            EVAL_Q4 int
        );
        INSERT INTO EVALUATION VALUES(1,'11111',4,4,4,4);
        INSERT INTO EVALUATION VALUES(2,'22222',3,3,3,3);
        INSERT INTO EVALUATION VALUES(3,'33333',2,2,2,2);
        INSERT INTO EVALUATION VALUES(4,'44444',1,1,1,1);
        INSERT INTO EVALUATION VALUES(5,'55555',5,5,5,5);
    END
/* -- */
