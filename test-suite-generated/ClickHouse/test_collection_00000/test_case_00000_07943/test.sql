SELECT [(1, 'a'), (3, 'b')]::Nested(u UInt8, s String) AS t, toTypeName(t);
