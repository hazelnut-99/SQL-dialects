SELECT (1::Float64, 2::Float64, 3::Float64) AS x, (4::Float64, 5::Float64, 6::Float64) AS y, dotProduct(x, y) AS res, toTypeName(res);
