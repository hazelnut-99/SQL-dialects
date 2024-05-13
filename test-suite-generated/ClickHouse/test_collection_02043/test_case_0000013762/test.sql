SELECT arrayDistinct(groupArray(dictGet('db_01501.cache_dict', 'Decimal128_', toUInt64(number)))) from numbers(10);
