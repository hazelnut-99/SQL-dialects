SELECT arrayReduce('sumOrNull', []::Array(UInt8)) as a, toTypeName(a);
