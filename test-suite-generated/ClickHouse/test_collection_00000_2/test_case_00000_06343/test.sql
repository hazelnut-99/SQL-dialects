SELECT arrayMap(x -> hex(toString(x)), finalizeAggregation(uniqStateForEachState([1, NULL])));
