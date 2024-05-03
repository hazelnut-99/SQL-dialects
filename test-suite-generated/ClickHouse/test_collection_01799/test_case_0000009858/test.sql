SELECT initializeAggregation('uniqExactState', toNullable('foo')) = arrayReduce('uniqExactState', [toNullable('foo')]);
