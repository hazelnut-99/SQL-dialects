WITH IPv4CIDRToRange(toIPv4('192.168.0.0'), 8) as ip_range SELECT COUNT(*) FROM ipv4_range WHERE ip BETWEEN tupleElement(ip_range, 1) AND tupleElement(ip_range, 2);
