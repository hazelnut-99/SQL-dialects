select number, arrayReduce( 'max', [a] ) from (select materialize([100,100,200]) a, number from numbers(10));
