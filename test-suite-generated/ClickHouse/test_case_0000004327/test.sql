SELECT finalizeAggregation(materialize((SELECT sumState(number) FROM numbers(10)) + (SELECT sumState(number) FROM numbers(10))));
