SELECT id, arrayDotProduct(vec::Array(Float64), vec::Array(Float64)) FROM tab ORDER BY id;
