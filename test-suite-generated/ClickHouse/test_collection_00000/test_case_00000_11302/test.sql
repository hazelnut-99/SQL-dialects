select if(number % 2, materialize(toLowCardinality('a')), materialize(toLowCardinality('a'))) from numbers(2);
