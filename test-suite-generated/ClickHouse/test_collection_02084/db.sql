DROP TABLE IF EXISTS test_datetime;
CREATE TABLE test_datetime(timestamp DateTime('Asia/Istanbul')) ENGINE=Log;
INSERT INTO test_datetime VALUES ('2020-10-15 00:00:00');
DROP TABLE test_datetime;
CREATE TABLE test_datetime(timestamp DateTime64(3, 'Asia/Istanbul')) Engine=Log;
INSERT INTO test_datetime VALUES ('2020-10-15 00:00:00'), (1602709200123);
