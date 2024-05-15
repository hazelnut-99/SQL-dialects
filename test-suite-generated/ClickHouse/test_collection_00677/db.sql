DROP TABLE IF EXISTS ipv6_range;
CREATE TABLE ipv6_range(ip IPv6, cidr UInt8) ENGINE = Memory;
INSERT INTO ipv6_range (ip, cidr) VALUES ('2001:0db8:0000:85a3:0000:0000:ac1f:8001', 0), ('2001:0db8:0000:85a3:ffff:ffff:ffff:ffff', 32), ('ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff', 16), ('2001:df8:0:85a3::ac1f:8001', 32), ('2001:0db8:85a3:85a3:0000:0000:ac1f:8001', 16), ('0000:0000:0000:0000:0000:0000:0000:0000', 8), ('ffff:0000:0000:0000:0000:0000:0000:0000', 4);
WITH IPv6CIDRToRange(IPv6StringToNum('2001:0db8:0000:85a3:0000:0000:ac1f:8001'), 32) as ip_range SELECT COUNT(*) FROM ipv6_range WHERE ip BETWEEN tupleElement(ip_range, 1) AND tupleElement(ip_range, 2);
WITH IPv6CIDRToRange(IPv6StringToNum('2001:0db8:0000:85a3:0000:0000:ac1f:8001'), 25) as ip_range SELECT COUNT(*) FROM ipv6_range WHERE ip BETWEEN tupleElement(ip_range, 1) AND tupleElement(ip_range, 2);
WITH IPv6CIDRToRange(IPv6StringToNum('2001:0db8:0000:85a3:0000:0000:ac1f:8001'), 26) as ip_range SELECT COUNT(*) FROM ipv6_range WHERE ip BETWEEN tupleElement(ip_range, 1) AND tupleElement(ip_range, 2);
WITH IPv6CIDRToRange(IPv6StringToNum('2001:0db8:0000:85a3:0000:0000:ac1f:8001'), 64) as ip_range SELECT COUNT(*) FROM ipv6_range WHERE ip BETWEEN tupleElement(ip_range, 1) AND tupleElement(ip_range, 2);
WITH IPv6CIDRToRange(IPv6StringToNum('2001:0db8:0000:85a3:0000:0000:ac1f:8001'), 0) as ip_range SELECT COUNT(*) FROM ipv6_range WHERE ip BETWEEN tupleElement(ip_range, 1) AND tupleElement(ip_range, 2);
DROP TABLE ipv6_range;
