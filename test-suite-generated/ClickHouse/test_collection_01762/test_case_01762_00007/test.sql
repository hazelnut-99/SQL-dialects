SELECT sum(isIPAddressInRange('255.255.255.254', cidr)) == 32 FROM test_data;
