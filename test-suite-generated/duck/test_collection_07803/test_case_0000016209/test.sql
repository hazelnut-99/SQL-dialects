select j, i, sum(i) over (partition by j) from a order by 1,2;
