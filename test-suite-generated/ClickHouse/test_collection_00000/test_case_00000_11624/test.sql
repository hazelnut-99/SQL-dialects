select toTypeName(toLowCardinality(number % 2) or 2) from numbers(1);
