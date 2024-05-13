DROP TABLE IF EXISTS ip_part_test;
CREATE TABLE ip_part_test ( ipv4 IPv4, ipv6 IPv6 ) ENGINE = MergeTree PARTITION BY ipv4 ORDER BY ipv4 AS SELECT '1.2.3.4', '::ffff:1.2.3.4';
