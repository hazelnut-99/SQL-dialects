SELECT sum(isIPAddressInRange('255.0.0.1', cidr)) == 9 FROM test_data;
