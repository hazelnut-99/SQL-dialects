DROP TABLE IF EXISTS test_03093;
CREATE TABLE test_03093 (app String, c UInt64, k Map(String, String)) ENGINE=MergeTree ORDER BY app;
INSERT INTO test_03093 VALUES ('x1', 123, {'k1': ''});
INSERT INTO test_03093 VALUES ('x1', 123, {'k1': '', 'k11': ''});
INSERT INTO test_03093 VALUES ('x1', 12,  {'k1': ''});
