WITH IPv4CIDRToRange(ip, cidr) as ip_range SELECT ip, cidr, IPv4NumToString(tupleElement(ip_range, 1)), ip_range FROM ipv4_range;
