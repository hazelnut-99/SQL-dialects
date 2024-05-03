SELECT if(materialize(1) > 0, materialize(toInt32(1)), CAST(NULL, 'Nullable(Int64)'));
