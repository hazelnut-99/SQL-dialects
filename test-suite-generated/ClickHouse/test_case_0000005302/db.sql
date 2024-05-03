DROP TABLE IF EXISTS tnul SYNC;
DROP TABLE IF EXISTS tlc SYNC;
CREATE TABLE tnul (lc Nullable(String)) ENGINE = MergeTree ORDER BY tuple();
INSERT INTO tnul VALUES (NULL), ('qwe');
DROP TABLE tnul SYNC;
CREATE TABLE tlc (lc LowCardinality(Nullable(String))) ENGINE = MergeTree ORDER BY tuple();
INSERT INTO tlc VALUES (NULL), ('qwe');
