SELECT xxHash32(x) = toUInt32(949155633) FROM (SELECT CAST(1 AS Enum8('a' = 1, 'b' = 2)) as x);
