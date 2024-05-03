SELECT avgWeightedIf(number, number, toNullable(number % 10)) t, toTypeName(t) FROM numbers(100);
