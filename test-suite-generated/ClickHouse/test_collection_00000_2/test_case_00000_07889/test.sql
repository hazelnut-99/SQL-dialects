select if(toLowCardinality(number) % 2, number, number + 1) from numbers(10);
