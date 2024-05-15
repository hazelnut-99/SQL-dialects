SELECT '= 127.0.0.1', ipv4_ FROM ipv4_test
    WHERE ipv4_ = toIPv4('127.0.0.1')
    ORDER BY ipv4_;
