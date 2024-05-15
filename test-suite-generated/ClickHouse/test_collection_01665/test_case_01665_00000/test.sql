select finalizeAggregation(cast(quantileState(0)(arrayJoin([1,2,3])) as AggregateFunction(quantile(1), UInt8)));
