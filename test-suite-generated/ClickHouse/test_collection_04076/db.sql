DROP TABLE IF EXISTS tab;
CREATE TABLE tab (col String) Engine=MergeTree ORDER BY col;
INSERT INTO tab VALUES ('') ('12345') ('341Jons54326ton') ('A2222222') ('Fairdale') ('Faredale') ('Jon1s2o3n') ('Jonson') ('Jonston') ('M\acDonald22321') ('MacDonald') ('S3344mith0000') ('Smith');
