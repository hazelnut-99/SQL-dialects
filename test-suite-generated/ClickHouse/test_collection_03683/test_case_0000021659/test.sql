SELECT argMax((n, n), n) t, toTypeName(t) FROM (SELECT if(number % 3 = 0, NULL, number) AS n from numbers(10));
