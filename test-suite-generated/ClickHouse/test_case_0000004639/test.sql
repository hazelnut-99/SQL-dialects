select JSONExtract('{"a" : 42}', 'a', 'Variant(String, UInt32)') as v, variantType(v);
