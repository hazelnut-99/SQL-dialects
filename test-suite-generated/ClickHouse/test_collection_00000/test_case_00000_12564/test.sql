SELECT [1, 2, 3]::Array(Float64) AS x, [4, 5, 6]::Array(Float64) AS y, dotProduct(x, y) AS res, toTypeName(res);
