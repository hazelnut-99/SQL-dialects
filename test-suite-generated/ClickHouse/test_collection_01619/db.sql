DROP TABLE IF EXISTS data_01660;
CREATE TABLE data_01660 (key Int) Engine=MergeTree() ORDER BY key;
SYSTEM STOP MERGES data_01660;
