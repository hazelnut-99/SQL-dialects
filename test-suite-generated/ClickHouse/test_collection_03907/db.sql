DROP TABLE IF EXISTS test_tab;
CREATE TABLE test_tab
  (id UInt32, haystack String, needle String, replacement String)
  engine = MergeTree()
  ORDER BY id;
DROP TABLE IF EXISTS test_tab;
