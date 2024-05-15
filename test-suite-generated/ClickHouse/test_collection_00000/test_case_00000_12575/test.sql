SELECT (-1::Int64, -2::Int64, -3::Int64) AS x, (4::Int64, 5::Int64, 6::Int64) AS y, dotProduct(x, y) AS res, toTypeName(res);
