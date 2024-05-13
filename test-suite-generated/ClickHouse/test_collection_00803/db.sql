DROP TABLE IF EXISTS auto_assign_enum;
DROP TABLE IF EXISTS auto_assign_enum1;
DROP TABLE IF EXISTS auto_assign_enum2;
DROP TABLE IF EXISTS auto_assign_enum3;
CREATE TABLE auto_assign_enum (x enum('a', 'b')) ENGINE=MergeTree() order by x;
INSERT INTO auto_assign_enum VALUES('a'), ('b');
