select toTypeName(multiIf(toLowCardinality(number % 2), 1, 1, 2, 3)) from numbers(1);
