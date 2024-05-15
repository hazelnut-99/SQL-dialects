SELECT initializeAggregation('uniqExactState', toNullable(123)) = arrayReduce('uniqExactState', [toNullable(123)]);
