DROP TABLE IF EXISTS tmp;
CREATE TABLE tmp (x Int64) ENGINE = MergeTree() ORDER BY tuple() PARTITION BY tuple();
ALTER TABLE tmp ADD COLUMN s String DEFAULT toString(x);
