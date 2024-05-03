SELECT avgWeightedIf(number, number, if(number < 10000, NULL, number % 10)) t, toTypeName(t) FROM numbers(100);
