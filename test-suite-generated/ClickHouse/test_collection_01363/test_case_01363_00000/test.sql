SELECT arrayDistinct(groupArray(dictGetUInt32('db_01501.cache_dict', 'UInt32_', toUInt64(number)))) from numbers(10);
