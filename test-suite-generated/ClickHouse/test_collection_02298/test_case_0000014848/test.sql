select key, byteSize(*), opt_int32, byteSize(opt_int32), opt_str, byteSize(opt_str), tuple, byteSize(tuple), strings, byteSize(strings) from test_byte_size_other order by key;
