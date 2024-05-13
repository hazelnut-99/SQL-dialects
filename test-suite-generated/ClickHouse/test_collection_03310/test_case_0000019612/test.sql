SELECT if(materialize(1) > 0, CAST(NULL, 'Nullable(Decimal(18, 4))'), materialize(CAST(2, 'Nullable(Decimal(9, 4))')));
