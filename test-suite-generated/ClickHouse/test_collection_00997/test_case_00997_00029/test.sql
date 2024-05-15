SELECT * FROM (SELECT if(number % 2 = 0, number, number * 1000) AS k FROM numbers(100)) s1 JOIN dict_flat d ON k = key OR k == 1000 * key ORDER BY key;
