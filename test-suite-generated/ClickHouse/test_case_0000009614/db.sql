DROP TABLE IF EXISTS retention_test;
CREATE TABLE retention_test(date Date, uid Int32)ENGINE = Memory;
INSERT INTO retention_test SELECT '2018-08-06', number FROM numbers(80);
INSERT INTO retention_test SELECT '2018-08-07', number FROM numbers(50);
INSERT INTO retention_test SELECT '2018-08-08', number FROM numbers(60);
