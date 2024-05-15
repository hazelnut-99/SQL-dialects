select (toLowCardinality('a') as val) || 'b' group by val order by val;
