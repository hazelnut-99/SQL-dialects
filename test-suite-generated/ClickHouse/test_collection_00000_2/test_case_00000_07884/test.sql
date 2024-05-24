select if(isNull(x), Null, 42 / x) from (select CAST(materialize(Null), 'Nullable(Decimal32(2))') as x);
