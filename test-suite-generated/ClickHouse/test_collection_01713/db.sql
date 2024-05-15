DROP TABLE IF EXISTS join_tbl;
CREATE TABLE join_tbl (`id` String, `name` String, lcname LowCardinality(String)) ENGINE = Join(any, left, id);
INSERT INTO join_tbl VALUES ('xxx', 'yyy', 'yyy');
