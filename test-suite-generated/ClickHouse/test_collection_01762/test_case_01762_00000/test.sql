SELECT sum(isIPAddressInRange('0.0.0.0', cidr)) == 1 FROM test_data;
