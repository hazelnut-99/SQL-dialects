SELECT arrayDistinct(groupArray(dictGetUInt64('db_01501.cache_dict', 'UInt64_', toUInt64(number)))) from numbers(10);
