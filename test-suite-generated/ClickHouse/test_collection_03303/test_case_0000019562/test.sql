SELECT count() FROM numbers_mt(100000000) WHERE NOT ignore(toIPv6OrZero(randomString(8)));
