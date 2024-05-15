SELECT dictGet('dictdb_01376.dict_exists', 'value', toUInt64(1)) as val FROM numbers(2) GROUP BY val;
