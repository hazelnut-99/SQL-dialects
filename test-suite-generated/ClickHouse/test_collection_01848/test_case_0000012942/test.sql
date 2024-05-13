SELECT hex(toString(uniqState(x))) FROM (SELECT toNullable(1) AS x) WITH TOTALS;
