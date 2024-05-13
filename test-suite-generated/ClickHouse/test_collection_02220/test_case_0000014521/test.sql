select median(x) over (partition by x) from (select 1 x);
