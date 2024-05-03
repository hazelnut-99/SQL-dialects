SELECT arrayMap(x -> arrayMap(y -> round(y, 5), x), corrMatrix(a_value, b_value, c_value, d_value))  FROM fh;
