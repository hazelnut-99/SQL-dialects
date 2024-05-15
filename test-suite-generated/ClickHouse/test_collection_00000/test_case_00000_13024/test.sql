SELECT any(number % 2) AS a, anyLast(number % 3) AS b FROM numbers(10000000) GROUP BY number % 2, number % 3 ORDER BY a, b;
