SELECT arrayDistinct(groupArray(dictGetInt8('db_01501.cache_dict', 'Int8_', toUInt64(number)))) from numbers(10);
