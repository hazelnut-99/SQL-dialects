SELECT DISTINCT hex(toString(uniqState(x))) FROM (SELECT intDiv(number, 3) AS k, toNullable(1) AS x FROM numbers(10)) GROUP BY k WITH TOTALS ORDER BY k;
