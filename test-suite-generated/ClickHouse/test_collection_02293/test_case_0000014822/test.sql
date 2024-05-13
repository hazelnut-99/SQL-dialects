select key, byteSize(*), toTypeName(date), byteSize(date), toTypeName(dt), byteSize(dt), toTypeName(dt64), byteSize(dt64), toTypeName(uuid), byteSize(uuid) from test_byte_size_number1 order by key;
