select tuple(array(number)) as x FROM numbers(10) GROUP BY number, array(number) WITH ROLLUP order by x;
