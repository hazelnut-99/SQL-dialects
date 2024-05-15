select toTypeName(key), toTypeName(value) from (
    select 1 as key, '' as value
    union all
    select toUInt64(2) as key, toNullable('') as value
);
