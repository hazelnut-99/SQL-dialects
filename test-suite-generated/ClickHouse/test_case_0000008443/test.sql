SELECT avgWeightedIf(if(number < 50, NULL, number), if(number < 10000, NULL, number), if(number < 50, NULL, number % 10)) t, toTypeName(t) FROM numbers(100);
