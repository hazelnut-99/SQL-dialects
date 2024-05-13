SELECT n % 10, count(1) from (SELECT range(0, number) as x FROM numbers(1000)) LEFT ARRAY JOIN x as n group by n % 10;
