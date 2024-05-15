CREATE TABLE xxxx_yyy (key UInt32, key_b ALIAS key) ENGINE=MergeTree() ORDER BY key;
INSERT INTO xxxx_yyy SELECT number FROM numbers(10);
