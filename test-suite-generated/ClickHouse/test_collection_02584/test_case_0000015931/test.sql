SELECT sum(isIPAddressInRange('128.0.0.0', cidr)) == 2 FROM test_data;
