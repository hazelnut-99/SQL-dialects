DROP TABLE IF EXISTS test_low_cardinality_string;
DROP TABLE IF EXISTS test_low_cardinality_uuid;
DROP TABLE IF EXISTS test_low_cardinality_int;
CREATE TABLE test_low_cardinality_string (data String) ENGINE MergeTree ORDER BY data;
CREATE TABLE test_low_cardinality_uuid (data String) ENGINE MergeTree ORDER BY data;
CREATE TABLE test_low_cardinality_int (data String) ENGINE MergeTree ORDER BY data;
INSERT INTO test_low_cardinality_string (data) VALUES ('{"a": "hi", "b": "hello", "c": "hola", "d": "see you, bye, bye"}');
INSERT INTO test_low_cardinality_int (data) VALUES ('{"a": 11, "b": 2222, "c": 33333333, "d": 4444444444444444}');
INSERT INTO test_low_cardinality_uuid (data) VALUES ('{"a": "2d49dc6e-ddce-4cd0-afb8-790956df54c4", "b": "2d49dc6e-ddce-4cd0-afb8-790956df54c3", "c": "2d49dc6e-ddce-4cd0-afb8-790956df54c1", "d": "2d49dc6e-ddce-4cd0-afb8-790956df54c1"}');
