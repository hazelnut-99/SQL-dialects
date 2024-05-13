DROP TABLE IF EXISTS proportions_ztest;
CREATE TABLE proportions_ztest (sx UInt64, sy UInt64, tx UInt64, ty UInt64) Engine = Memory();
INSERT INTO proportions_ztest VALUES (10, 11, 100, 101);
