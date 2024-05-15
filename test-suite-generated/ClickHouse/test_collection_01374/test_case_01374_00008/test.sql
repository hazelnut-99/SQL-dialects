SELECT arrayDistinct(groupArray(dictGetInt64('db_01501.cache_dict', 'Int64_', toUInt64(number)))) from numbers(10);
