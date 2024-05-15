select if(isNull(x), Null, intDiv(42, x)) from (select CAST(materialize(Null), 'Nullable(Int64)') as x);
