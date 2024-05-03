SELECT argMin((n, n), n) t, toTypeName(t) FROM (SELECT if(number >= 100, NULL, number::Int32) AS n from numbers(5, 10));
