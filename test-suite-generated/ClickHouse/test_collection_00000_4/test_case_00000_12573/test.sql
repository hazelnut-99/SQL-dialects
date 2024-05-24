SELECT (-1::Int16, -2::Int16, -3::Int16) AS x, (4::Int16, 5::Int16, 6::Int16) AS y, dotProduct(x, y) AS res, toTypeName(res);
