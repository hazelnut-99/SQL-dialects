SELECT toTypeName(initializeAggregation('uniqExactState', initializeAggregation('quantileState', 0)));
