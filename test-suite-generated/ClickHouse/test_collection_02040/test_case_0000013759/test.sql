SELECT arrayDistinct(groupArray(dictGetFloat64('db_01501.cache_dict', 'Float64_', toUInt64(number)))) from numbers(10);
