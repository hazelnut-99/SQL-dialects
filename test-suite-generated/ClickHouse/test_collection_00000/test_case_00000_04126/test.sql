SELECT finalizeAggregation((SELECT sumState(number) FROM numbers(10)) * 10);
