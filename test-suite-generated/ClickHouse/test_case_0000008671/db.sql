DROP TABLE IF EXISTS welch_ttest;
CREATE TABLE welch_ttest (left Float64, right UInt8) ENGINE = Memory;
INSERT INTO welch_ttest VALUES (27.5, 0), (21.0, 0), (19.0, 0), (23.6, 0), (17.0, 0), (17.9, 0), (16.9, 0), (20.1, 0), (21.9, 0), (22.6, 0), (23.1, 0), (19.6, 0), (19.0, 0), (21.7, 0), (21.4, 0), (27.1, 1), (22.0, 1), (20.8, 1), (23.4, 1), (23.4, 1), (23.5, 1), (25.8, 1), (22.0, 1), (24.8, 1), (20.2, 1), (21.9, 1), (22.1, 1), (22.9, 1), (20.5, 1), (24.4, 1);
DROP TABLE IF EXISTS welch_ttest;
CREATE TABLE welch_ttest (left Float64, right Float64) ENGINE = Memory;
INSERT INTO welch_ttest VALUES (30.02, 0), (29.99, 0), (30.11, 0), (29.97, 0), (30.01, 0), (29.99, 0), (29.89, 1), (29.93, 1), (29.72, 1), (29.98, 1), (30.02, 1), (29.98, 1);
DROP TABLE IF EXISTS welch_ttest;
CREATE TABLE welch_ttest (left Float64, right Float64) ENGINE = Memory;
INSERT INTO welch_ttest VALUES (0.010268, 0), (0.000167, 0), (0.000167, 0), (0.159258, 1), (0.136278, 1), (0.122389, 1);
