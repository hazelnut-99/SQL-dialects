select j, i, bool_and(i) over (partition by j), bool_or(i) over (partition by j) from a order by 1,2;
