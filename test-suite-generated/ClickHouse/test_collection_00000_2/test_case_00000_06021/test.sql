SELECT if(x = 0, 'fail', 'ok') FROM (SELECT CAST(NULL, 'Nullable(UInt8)') AS x);
