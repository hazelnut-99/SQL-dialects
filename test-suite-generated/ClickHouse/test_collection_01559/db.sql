DROP TABLE IF EXISTS runningConcurrency_test;
CREATE TABLE runningConcurrency_test(begin Date, end Date) ENGINE = Memory;
INSERT INTO runningConcurrency_test VALUES ('2020-12-01', '2020-12-10'), ('2020-12-02', '2020-12-10'), ('2020-12-03', '2020-12-12'), ('2020-12-10', '2020-12-12'), ('2020-12-13', '2020-12-20');
DROP TABLE runningConcurrency_test;
DROP TABLE IF EXISTS runningConcurrency_test;
CREATE TABLE runningConcurrency_test(begin DateTime, end DateTime) ENGINE = Memory;
INSERT INTO runningConcurrency_test VALUES ('2020-12-01 00:00:00', '2020-12-01 00:59:59'), ('2020-12-01 00:30:00', '2020-12-01 00:59:59'), ('2020-12-01 00:40:00', '2020-12-01 01:30:30'), ('2020-12-01 01:10:00', '2020-12-01 01:30:30'), ('2020-12-01 01:50:00', '2020-12-01 01:59:59');
DROP TABLE runningConcurrency_test;
