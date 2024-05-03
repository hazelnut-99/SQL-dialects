SELECT xxHash64(x) = toUInt64(9962287286179718960) FROM (SELECT CAST(1 AS Enum8('a' = 1, 'b' = 2)) as x);
