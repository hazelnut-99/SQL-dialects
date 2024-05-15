SELECT arrayMap(x -> finalizeAggregation(x), finalizeAggregation(uniqStateForEachState([1, NULL]))) WITH TOTALS;
