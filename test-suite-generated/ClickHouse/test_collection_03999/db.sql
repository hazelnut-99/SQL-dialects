DROP TABLE IF EXISTS 02668_logical_optimizer;
CREATE TABLE 02668_logical_optimizer
(a Int32, b LowCardinality(String))
ENGINE=Memory;
INSERT INTO 02668_logical_optimizer VALUES (1, 'test'), (2, 'test2'), (3, 'another');
