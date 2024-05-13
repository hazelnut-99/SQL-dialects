select if(number % 2, materialize(toLowCardinality('a')), NULL) from numbers(2);
