DROP TABLE IF EXISTS insert_fewer_columns;
CREATE TABLE insert_fewer_columns (a UInt8, b UInt8) ENGINE = Memory;
INSERT INTO insert_fewer_columns (a) VALUES (1), (2);
