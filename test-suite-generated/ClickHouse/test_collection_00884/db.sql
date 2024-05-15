DROP TABLE IF EXISTS mt;
CREATE TABLE mt(a Int32, timestamp DateTime) ENGINE=MergeTree ORDER BY tuple();
