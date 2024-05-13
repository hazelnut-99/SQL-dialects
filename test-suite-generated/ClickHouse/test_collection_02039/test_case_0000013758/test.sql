SELECT arrayDistinct(groupArray(dictGetFloat32('db_01501.cache_dict', 'Float32_', toUInt64(number)))) from numbers(10);
