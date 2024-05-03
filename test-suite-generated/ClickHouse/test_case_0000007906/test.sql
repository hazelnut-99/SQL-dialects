SELECT if(materialize(1) > 0, CAST(NULL, 'Nullable(Int64)'), materialize(toInt32(1)));
