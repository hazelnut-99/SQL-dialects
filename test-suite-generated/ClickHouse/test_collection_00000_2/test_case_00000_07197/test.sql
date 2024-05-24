SELECT finalizeAggregation(*) FROM (select initializeAggregation('sumMapState', [1, 2], [1, 2], [1, null]));
