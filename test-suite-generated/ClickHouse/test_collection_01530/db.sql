DROP TABLE IF EXISTS select_in_test;
CREATE TABLE select_in_test(value UInt8) ENGINE=TinyLog;
INSERT INTO select_in_test VALUES (1), (2), (3);
DROP TABLE select_in_test;
CREATE TABLE select_in_test(value Int8) ENGINE=TinyLog;
INSERT INTO select_in_test VALUES (-1), (2), (3);
