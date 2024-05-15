select arrayMap(x -> finalizeAggregation(x), state) from (select sumStateResample(0, 20, 1)(number, number % 20) as state from numbers(200));
