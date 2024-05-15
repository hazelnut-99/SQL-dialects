SELECT arrayDistinct(groupArray(dictGetInt32('db_01501.cache_dict', 'Int32_', toUInt64(number)))) from numbers(10);
