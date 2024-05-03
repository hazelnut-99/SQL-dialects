WITH toDate('2000-01-01') as a, toDateTime('2000-01-01', 'Asia/Istanbul') as b
SELECT if(value, b, a) as result, toTypeName(result)
FROM predicate_table;
