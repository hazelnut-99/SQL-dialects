SELECT sum(isIPAddressInRange('255.255.255.255', cidr)) == 33 FROM test_data;
