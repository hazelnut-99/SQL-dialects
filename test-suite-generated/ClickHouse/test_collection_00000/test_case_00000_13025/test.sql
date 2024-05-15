SELECT max((number % 5) * (number % 7)) AS a FROM numbers(10000000) GROUP BY number % 7, number % 5 ORDER BY a;
