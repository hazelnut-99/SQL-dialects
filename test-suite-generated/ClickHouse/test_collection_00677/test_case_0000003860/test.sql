select u, cumSum from (
   select u, min(d) mn, max(d) mx, groupArray(d) dg, groupArray(v) vg,
       arrayMap(x -> x + mn, range(toUInt32(mx - mn + 1))) days,
       toString(arrayCumSum(arrayMap( x -> vg[indexOf(dg, x)] , days))) cumSum
   from (select 1 u, today()-1 d, 1 v)
   group by u
);
