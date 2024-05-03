WITH toDateTime('2000-01-01', 'Asia/Istanbul') as a, toDateTime64('2000-01-01', 5, 'Asia/Istanbul') as b
SELECT if(value, b, a) as result, toTypeName(result)
FROM predicate_table;
