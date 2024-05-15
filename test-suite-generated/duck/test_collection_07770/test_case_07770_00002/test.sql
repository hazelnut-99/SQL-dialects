select j, i, bool_and(not i) over (partition by j order by i), bool_and(i) over (partition by j order by i), bool_or(i) over (partition by j order by i) from a order by 1,2;
