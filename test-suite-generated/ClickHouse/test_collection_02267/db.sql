DROP TABLE IF EXISTS runningConcurrency_test;
CREATE TABLE runningConcurrency_test(begin Date, end Date) ENGINE = Memory;
INSERT INTO runningConcurrency_test VALUES ('2020-12-01', '2020-12-10'), ('2020-12-02', '2020-12-10'), ('2020-12-03', '2020-12-12'), ('2020-12-10', '2020-12-12'), ('2020-12-13', '2020-12-20');
DROP TABLE runningConcurrency_test;
