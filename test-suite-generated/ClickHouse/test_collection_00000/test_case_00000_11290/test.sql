select if(number % 2, materialize(toLowCardinality('a')), materialize('b')) from numbers(2);
