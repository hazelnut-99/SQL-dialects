DROP TABLE IF EXISTS null_subcolumns;
CREATE TABLE null_subcolumns (id UInt32, n Nullable(String)) ENGINE = MergeTree ORDER BY id;
INSERT INTO null_subcolumns VALUES (1, 'foo') (2, NULL) (3, NULL) (4, 'abc');
