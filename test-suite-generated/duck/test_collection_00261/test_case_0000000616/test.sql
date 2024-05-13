select coalesce(a.i, b.i) from a full outer join b on (a.i=b.i) order by all;
