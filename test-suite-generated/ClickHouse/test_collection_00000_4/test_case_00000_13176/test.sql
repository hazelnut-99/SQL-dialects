SELECT n, count(1) from (SELECT groupArray(number % 10) AS x FROM (SELECT * FROM numbers(100000))) ARRAY JOIN x as n group by n;
