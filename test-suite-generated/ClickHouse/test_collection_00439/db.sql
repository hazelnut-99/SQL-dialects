DROP TABLE IF EXISTS ipv4_test;
CREATE TABLE ipv4_test (ipv4_ IPv4) ENGINE = Memory;
SHOW CREATE TABLE ipv4_test;
INSERT INTO ipv4_test (ipv4_) VALUES ('0.0.0.0'), ('255.255.255.255'), ('192.168.0.91'), ('127.0.0.1'), ('8.8.8.8');
DROP TABLE IF EXISTS ipv4_test;
DROP TABLE IF EXISTS ipv6_test;
CREATE TABLE ipv6_test (ipv6_ IPv6) ENGINE = Memory;
SHOW CREATE TABLE ipv6_test;
INSERT INTO ipv6_test VALUES ('::'), ('0:0:0:0:0:0:0:0'), ('FFFF:FFFF:FFFF:FFFF:FFFF:FFFF:FFFF:FFFF'), ('2001:0DB8:AC10:FE01:FEED:BABE:CAFE:F00D'), ('0000:0000:0000:0000:0000:FFFF:C1FC:110A'), ('::ffff:127.0.0.1'), ('::ffff:8.8.8.8');
DROP TABLE IF EXISTS ipv6_test;
