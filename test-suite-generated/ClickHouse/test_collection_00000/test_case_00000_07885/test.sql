select if(isNull(x), Null, x / 0) from (select CAST(materialize(Null), 'Nullable(Decimal32(2))') as x);
