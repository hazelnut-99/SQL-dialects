SELECT dictGet('db_01721.decimal_dict', 'Decimal32_', toUInt64(5000)),
       dictGet('db_01721.decimal_dict', 'Decimal64_', toUInt64(5000)),
       dictGet('db_01721.decimal_dict', 'Decimal128_', toUInt64(5000))
       --,dictGet('db_01721.decimal_dict', 'Decimal256_', toUInt64(5000))
;
