DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table (id UInt64, value_ipv4 IPv4, value_ipv6 IPv6) ENGINE=MergeTree ORDER BY id;
INSERT INTO test_table VALUES (0, '127.0.0.1', '127.0.0.1');
