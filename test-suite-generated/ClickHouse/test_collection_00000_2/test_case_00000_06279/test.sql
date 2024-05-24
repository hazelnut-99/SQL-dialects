select arrayMap(x -> finalizeAggregation(x), state) from (select groupArrayStateResample(0, 20, 1)(number, number % 20) state from numbers(50));
