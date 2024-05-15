select j, i, sum(i) over (partition by j order by i) from a order by 1,2;
