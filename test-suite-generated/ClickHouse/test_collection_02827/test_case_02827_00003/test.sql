SELECT id, arrayDotProduct(vec::Array(UInt32), vec::Array(UInt32)) FROM tab ORDER BY id;
