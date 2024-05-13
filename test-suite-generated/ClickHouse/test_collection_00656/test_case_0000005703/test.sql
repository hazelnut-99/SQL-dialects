select (toLowCardinality(z) as val) || 'b'  from (select arrayJoin(['c', 'd']) as z) group by val order by val;
