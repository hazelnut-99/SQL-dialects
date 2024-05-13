DROP TABLE IF EXISTS test_table_ipv4;
CREATE TABLE test_table_ipv4
(
    ip String,
    ipv4 IPv4
) ENGINE = TinyLog;
DROP TABLE test_table_ipv4;
DROP TABLE IF EXISTS test_table_ipv4_materialized;
CREATE TABLE test_table_ipv4_materialized
(
    ip String,
    ipv6 IPv4 MATERIALIZED toIPv4(ip)
) ENGINE = TinyLog;
