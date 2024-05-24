select toTypeName(key), toTypeName(value) from (
    select toDecimal64(2, 8) as key, toNullable('') as value
    union all
    select toDecimal32(2, 4) as key, toFixedString('', 1) as value
);
