select toUInt64(toLowCardinality(val)) from (select arrayJoin(['1']) as val);
