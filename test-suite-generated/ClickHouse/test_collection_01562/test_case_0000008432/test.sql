SELECT avgWeightedIf(number, number, number % 10) t, toTypeName(t) FROM numbers(100);
