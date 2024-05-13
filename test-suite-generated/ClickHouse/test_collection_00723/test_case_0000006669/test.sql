SELECT '> 127.0.0.1', ipv6_ FROM ipv6_test
    WHERE ipv6_ > IPv4ToIPv6(toIPv4('127.0.0.1'))
    ORDER BY ipv6_;
