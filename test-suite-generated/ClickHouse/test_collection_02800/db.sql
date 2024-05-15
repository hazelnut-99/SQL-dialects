DROP TABLE IF EXISTS 02702_logical_optimizer;
CREATE TABLE 02702_logical_optimizer
(a Int32, b LowCardinality(String))
ENGINE=Memory;
INSERT INTO 02702_logical_optimizer VALUES (1, 'test'), (2, 'test2'), (3, 'another');
DROP TABLE 02702_logical_optimizer;
DROP TABLE IF EXISTS 02702_logical_optimizer_with_null_column;
CREATE TABLE 02702_logical_optimizer_with_null_column
(a Nullable(Int32), b LowCardinality(String))
ENGINE=Memory;
INSERT INTO 02702_logical_optimizer_with_null_column VALUES (1, 'test'), (2, 'test2'), (3, 'another');
