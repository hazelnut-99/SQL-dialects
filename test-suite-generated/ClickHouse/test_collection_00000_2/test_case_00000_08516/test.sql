SELECT materialize(1) % CAST(materialize(NULL), 'Nullable(UInt32)');
