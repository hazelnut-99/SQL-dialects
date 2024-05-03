SELECT materialize(toDecimal32(1, 2)) / CAST(materialize(1), 'Nullable(UInt32)');
