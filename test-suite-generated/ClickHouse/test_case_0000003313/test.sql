select number, arrayReduce( 'sum', a) from (select materialize([100,100,200]) a, number from numbers(10));
