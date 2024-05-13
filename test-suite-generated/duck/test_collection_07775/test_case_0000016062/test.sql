select j, i, bool_and(i) over (), bool_or(i) over () from a order by 1,2;
