SELECT materialize(toDecimal32(1, 2)) / CAST(NULL, 'Nullable(UInt32)');
