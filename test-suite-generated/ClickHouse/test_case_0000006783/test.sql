with NULL as pid
select a.col1, sum(a.col2) as summ
from table1 a
prewhere (pid is null or a.col2 = pid)
group by a.col1;
