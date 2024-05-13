select sum(s)from (
    select max(i) over(partition by i % 1025 order by i / 1025) s from integers
) q;
