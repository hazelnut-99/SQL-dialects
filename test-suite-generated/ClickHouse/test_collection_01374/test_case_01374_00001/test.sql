SELECT arrayDistinct(groupArray(dictGetUInt8('db_01501.cache_dict', 'UInt8_', toUInt64(number)))) from numbers(10);
