SELECT finalizeAggregation(countState(DISTINCT toString(number % 20))) FROM numbers_mt(100000);
