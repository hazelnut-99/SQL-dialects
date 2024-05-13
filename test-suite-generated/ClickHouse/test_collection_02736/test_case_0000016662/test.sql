SELECT hex(toString(initializeAggregation('anyLastState', initializeAggregation('uniqState', 0))));
