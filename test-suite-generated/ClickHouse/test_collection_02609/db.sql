DROP TABLE IF EXISTS 02483_substitute_udf;
DROP FUNCTION IF EXISTS 02483_plusone;
DROP FUNCTION IF EXISTS 02483_plustwo;
DROP FUNCTION IF EXISTS 02483_plusthree;
CREATE FUNCTION 02483_plusone AS (a) -> a + 1;
CREATE TABLE 02483_substitute_udf (id UInt32, number UInt32 DEFAULT 02483_plusone(id)) ENGINE=MergeTree() ORDER BY id;
DESC TABLE 02483_substitute_udf;
INSERT INTO 02483_substitute_udf (id, number) VALUES (1, NULL);
CREATE FUNCTION 02483_plustwo AS (a) -> a + 2;
ALTER TABLE 02483_substitute_udf MODIFY COLUMN number UInt32 DEFAULT 02483_plustwo(id);
DESC TABLE 02483_substitute_udf;
INSERT INTO 02483_substitute_udf (id, number) VALUES (5, NULL);
