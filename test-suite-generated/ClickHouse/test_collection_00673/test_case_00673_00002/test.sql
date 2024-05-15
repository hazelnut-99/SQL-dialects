SELECT count() FROM samples WHERE toUInt64(key) IN range(100);
