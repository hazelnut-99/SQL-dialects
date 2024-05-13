CREATE TABLE integers(i INTEGER);
INSERT INTO integers VALUES (1), (2), (3), (4), (5);
CREATE TABLE i2 AS SELECT 1 AS i FROM integers WHERE i % 2 <> 0;
UPDATE i2 SET i=NULL;
