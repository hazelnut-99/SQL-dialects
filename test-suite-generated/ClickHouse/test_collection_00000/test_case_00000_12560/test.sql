SELECT [-1, -2, -3]::Array(Int16) AS x, [4, 5, 6]::Array(Int16) AS y, dotProduct(x, y) AS res, toTypeName(res);
