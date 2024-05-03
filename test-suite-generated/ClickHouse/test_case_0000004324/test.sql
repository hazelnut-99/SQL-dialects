SELECT finalizeAggregation((SELECT sumState(number) FROM numbers(10)) + materialize((SELECT sumState(number) FROM numbers(10))));
