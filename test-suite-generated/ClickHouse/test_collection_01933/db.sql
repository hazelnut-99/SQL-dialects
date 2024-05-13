DROP TABLE IF EXISTS test;
CREATE TABLE test (a DateTime, b DateTime(), c DateTime(2), d DateTime('Asia/Istanbul'), e DateTime(3, 'Asia/Istanbul'), f DateTime32, g DateTime32('Asia/Istanbul'), h DateTime(0)) ENGINE = MergeTree ORDER BY a;
INSERT INTO test VALUES('2020-01-01 00:00:00', '2020-01-01 00:01:00', '2020-01-01 00:02:00.11', '2020-01-01 00:03:00', '2020-01-01 00:04:00.22', '2020-01-01 00:05:00', '2020-01-01 00:06:00', '2020-01-01 00:06:00');
