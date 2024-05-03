DROP TABLE IF EXISTS kstest;
CREATE TABLE kstest (left Float64, right Float64) ENGINE = Memory;
INSERT INTO kstest VALUES (0.010268, 0), (0.000167, 0), (0.000167, 0), (0.159258, 1), (0.136278, 1), (0.122389, 1);
