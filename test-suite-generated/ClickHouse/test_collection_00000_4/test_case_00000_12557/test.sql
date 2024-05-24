SELECT [1, 2, 3]::Array(UInt32) AS x, [4, 5, 6]::Array(UInt32) AS y, dotProduct(x, y) AS res, toTypeName(res);
