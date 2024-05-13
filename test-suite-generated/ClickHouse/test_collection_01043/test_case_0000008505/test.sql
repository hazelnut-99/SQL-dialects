SELECT IPv6NumToString(ip), cidr, IPv6CIDRToRange(ip, cidr) FROM ipv6_range;
