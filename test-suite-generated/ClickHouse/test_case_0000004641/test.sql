select JSONExtract('{"a" : [1, 2, 3]}', 'a', 'Variant(String, Array(UInt32))') as v, variantType(v);
