SELECT materialize(1) % CAST(materialize(NULL), 'Nullable(Float32)');
