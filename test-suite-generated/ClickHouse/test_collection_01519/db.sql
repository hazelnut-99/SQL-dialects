DROP TABLE IF EXISTS han_1;
CREATE TABLE han_1 (k Int32, date_dt LowCardinality(Nullable(String))) 
ENGINE = MergeTree() PARTITION BY k ORDER BY k;
INSERT INTO han_1 values (1, '2019-07-31');
