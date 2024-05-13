select toTypeName(if(toLowCardinality(number % 2), 1, 2)) from numbers(1);
