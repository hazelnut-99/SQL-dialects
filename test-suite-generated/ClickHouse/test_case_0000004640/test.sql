select JSONExtract('{"a" : "Hello"}', 'a', 'Variant(String, UInt32)') as v, variantType(v);
