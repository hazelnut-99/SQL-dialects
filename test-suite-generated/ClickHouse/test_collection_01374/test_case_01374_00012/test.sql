SELECT arrayDistinct(groupArray(dictGet('db_01501.cache_dict', 'Decimal64_', toUInt64(number)))) from numbers(10);
