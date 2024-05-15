select sum(s)from (
    select max(i) over(partition by i % 1023 order by i / 1023) s from integers
) q;
