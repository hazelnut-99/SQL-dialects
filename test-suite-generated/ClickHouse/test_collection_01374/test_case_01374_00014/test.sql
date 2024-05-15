SELECT arrayDistinct(groupArray(dictGetString('db_01501.cache_dict', 'String_', toUInt64(number)))) from numbers(10);
