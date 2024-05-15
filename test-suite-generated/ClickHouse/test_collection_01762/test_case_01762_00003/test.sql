SELECT sum(isIPAddressInRange('255.0.0.0', cidr)) == 9 FROM test_data;
