SELECT materialize(1) % CAST(materialize(1), 'Nullable(UInt32)');
