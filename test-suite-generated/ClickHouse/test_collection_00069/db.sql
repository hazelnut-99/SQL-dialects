DROP TABLE IF EXISTS test_00309_formats_case_insensitive;
CREATE TABLE test_00309_formats_case_insensitive(a Int64, b String) ENGINE=File(Csv);
INSERT INTO test_00309_formats_case_insensitive SELECT number, 'Hello & world' FROM numbers(3);
