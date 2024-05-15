SELECT hex(toString(initializeAggregation('uniqState', initializeAggregation('quantileState', 0))));
