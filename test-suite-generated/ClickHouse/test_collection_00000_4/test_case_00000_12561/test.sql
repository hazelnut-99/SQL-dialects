SELECT [-1, -2, -3]::Array(Int32) AS x, [4, 5, 6]::Array(Int32) AS y, dotProduct(x, y) AS res, toTypeName(res);
