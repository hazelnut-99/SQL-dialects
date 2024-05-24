SELECT hex(toString(initializeAggregation('uniqExactState', initializeAggregation('uniqState', 0))));
