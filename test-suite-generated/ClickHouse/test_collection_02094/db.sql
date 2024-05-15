DROP TABLE IF EXISTS test_map;
CREATE TABLE test_map (value Map(String, String)) ENGINE=TinyLog;
INSERT INTO test_map VALUES ({'K0':'V0'});
