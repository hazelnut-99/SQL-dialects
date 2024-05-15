DROP TABLE if exists lc;
CREATE TABLE lc (a LowCardinality(Nullable(String)), b LowCardinality(Nullable(String))) ENGINE = MergeTree order by tuple();
INSERT INTO lc VALUES ('a', 'b');
INSERT INTO lc VALUES ('c', 'd');
