DROP TABLE IF EXISTS test_table_ipv4;
CREATE TABLE test_table_ipv4
(
    ip String,
    ipv4 IPv4
) ENGINE = TinyLog;
