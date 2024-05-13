SELECT avgWeightedIf(number, number, if(number < 0, NULL, number % 10)) t, toTypeName(t) FROM numbers(100);
