select if(number % 2, toLowCardinality(number), toLowCardinality(number + 1)) from numbers(2);
