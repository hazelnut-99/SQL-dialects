SELECT arrayDistinct(groupArray(dictGetUInt16('db_01501.cache_dict', 'UInt16_', toUInt64(number)))) from numbers(10);
