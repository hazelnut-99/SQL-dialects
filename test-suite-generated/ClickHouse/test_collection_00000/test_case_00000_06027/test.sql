SELECT toTypeName(x), x, isNull(x), if(x = 0, 'fail', 'ok'), if(x = 1, 'fail', 'ok'), if(x >= 0, 'fail', 'ok')
FROM (SELECT CAST(NULL, 'Nullable(UInt8)') AS x);
