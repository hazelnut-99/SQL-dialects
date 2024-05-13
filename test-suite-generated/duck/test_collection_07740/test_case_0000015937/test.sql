select sum(s)from (
    select max(i) over(partition by i % 1024 order by i / 1024) s from integers
) q;
