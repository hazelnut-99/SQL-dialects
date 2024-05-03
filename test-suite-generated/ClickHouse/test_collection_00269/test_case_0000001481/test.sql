SELECT topKWeightedMerge(1)(initializeAggregation('topKWeightedState(1)', nan, arrayJoin(range(10))));
