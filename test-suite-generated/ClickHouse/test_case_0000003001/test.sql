SELECT argMaxIf((n, n), n, n > 100) t, toTypeName(t) FROM (SELECT if(number % 3 = 0, NULL, number) AS n from numbers(50));
