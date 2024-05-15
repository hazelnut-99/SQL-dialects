SELECT DISTINCT hex(toString(uniqState(x))) FROM (SELECT materialize(1) AS k, toNullable(1) AS x FROM numbers(1)) GROUP BY k WITH CUBE ORDER BY k;
