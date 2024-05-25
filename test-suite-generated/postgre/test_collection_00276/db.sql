CREATE TABLE test_tablesample (id int, name text) WITH (fillfactor=10);
INSERT INTO test_tablesample
  SELECT i, repeat(i::text, 200) FROM generate_series(0, 9) s(i);
