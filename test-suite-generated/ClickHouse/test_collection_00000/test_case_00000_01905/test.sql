select toUInt64(1) union all select countIf(n>0) from (select 2 as n);
