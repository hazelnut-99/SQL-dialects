SELECT uniqForEach(x) FROM (SELECT emptyArrayUInt8() AS x UNION ALL SELECT [1, 2, 3] UNION ALL SELECT emptyArrayUInt8() UNION ALL SELECT [2, 2]);
