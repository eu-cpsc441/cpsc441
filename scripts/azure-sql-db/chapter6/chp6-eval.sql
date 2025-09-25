/* Database Systems, Coronel/Morris */
/* Type of SQL : Azure SQL Database */

USE cpsc441;
GO

CREATE SCHEMA c6_eval;
GO

CREATE TABLE c6_eval.EVALUATION
(
    EVAL_NUM int,
    STU_NUM  varchar(5),
    EVAL_Q1  int,
    EVAL_Q2  int,
    EVAL_Q3  int,
    EVAL_Q4  int
);

INSERT INTO c6_eval.EVALUATION VALUES (1, '11111', 4, 4, 4, 4);
INSERT INTO c6_eval.EVALUATION VALUES (2, '22222', 3, 3, 3, 3);
INSERT INTO c6_eval.EVALUATION VALUES (3, '33333', 2, 2, 2, 2);
INSERT INTO c6_eval.EVALUATION VALUES (4, '44444', 1, 1, 1, 1);
INSERT INTO c6_eval.EVALUATION VALUES (5, '55555', 5, 5, 5, 5);

/* -- */
