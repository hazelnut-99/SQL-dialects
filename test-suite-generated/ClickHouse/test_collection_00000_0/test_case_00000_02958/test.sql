select CAST(toLowCardinality(val) as UInt64) from (select arrayJoin(['1']) as val);
