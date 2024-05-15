SELECT first_value_respect_nullsMerge(t) FROM (Select first_value_respect_nullsState(number) as t FROM numbers(5));
