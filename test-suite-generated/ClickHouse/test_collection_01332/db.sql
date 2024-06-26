DROP TABLE IF EXISTS null_subcolumns;
CREATE TABLE null_subcolumns (id UInt32, n Nullable(String)) ENGINE = MergeTree ORDER BY id;
INSERT INTO null_subcolumns VALUES (1, 'foo') (2, NULL) (3, NULL) (4, 'abc');
DETACH TABLE null_subcolumns;
ATTACH TABLE null_subcolumns;
DROP TABLE null_subcolumns;
DROP TABLE IF EXISTS map_subcolumns;
CREATE TABLE map_subcolumns (id UInt32, m Map(String, UInt32)) ENGINE = MergeTree ORDER BY id;
INSERT INTO map_subcolumns VALUES (1, map('a', 1, 'b', 2)) (2, map('a', 3, 'c', 4)), (3, map('b', 5, 'c', 6, 'd', 7));
DETACH TABLE map_subcolumns;
ATTACH TABLE map_subcolumns;
