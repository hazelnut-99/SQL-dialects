DROP TABLE IF EXISTS ipv4_range;
CREATE TABLE ipv4_range(ip IPv4, cidr UInt8) ENGINE = Memory;
INSERT INTO ipv4_range (ip, cidr) VALUES (toIPv4('192.168.5.2'), 0), (toIPv4('192.168.5.20'), 32), (toIPv4('255.255.255.255'), 16), (toIPv4('192.142.32.2'), 32), (toIPv4('192.172.5.2'), 16), (toIPv4('0.0.0.0'), 8), (toIPv4('255.0.0.0'), 4);
DROP TABLE ipv4_range;
