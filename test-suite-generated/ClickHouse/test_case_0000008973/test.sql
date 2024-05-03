SELECT materialize(toDecimal32(1, 2)) / CAST(materialize(NULL), 'Nullable(UInt32)');
