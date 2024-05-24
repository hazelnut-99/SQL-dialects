SELECT if(materialize(1) > 0, materialize(CAST(2, 'Nullable(Decimal(9, 4))')), CAST(NULL, 'Nullable(Decimal(18, 4))'));
