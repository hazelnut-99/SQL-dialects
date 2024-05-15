SELECT arr1, arr2, count() AS c FROM (SELECT emptyArrayUInt8() AS arr1, [1] AS arr2 UNION ALL SELECT [1], emptyArrayUInt8()) GROUP BY arr1, arr2 ORDER BY c DESC, arr1, arr2;
