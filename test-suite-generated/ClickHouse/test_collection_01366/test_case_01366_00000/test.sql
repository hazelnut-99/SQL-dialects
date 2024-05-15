SELECT arrayDistinct(groupArray(dictGetInt16('db_01501.cache_dict', 'Int16_', toUInt64(number)))) from numbers(10);
