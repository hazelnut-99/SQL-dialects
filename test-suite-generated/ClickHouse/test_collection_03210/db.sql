CREATE TABLE testdata (`1` String) ENGINE=MergeTree ORDER BY tuple();
INSERT INTO testdata VALUES ('testdata');
