DROP TABLE IF EXISTS ipv4_test;
CREATE TABLE ipv4_test (ipv4_ IPv4) ENGINE = Memory;
SHOW CREATE TABLE ipv4_test;
INSERT INTO ipv4_test (ipv4_) VALUES ('0.0.0.0'), ('255.255.255.255'), ('192.168.0.91'), ('127.0.0.1'), ('8.8.8.8');
