SELECT COUNT(*), SUM(LENGTH(list_aggr)), MIN(LENGTH(list_aggr)), MAX(LENGTH(list_aggr)) FROM (
select
   list(row_number) over(rows between unbounded preceding and current row)
from generate_series(5000) t(row_number)
) t(list_aggr);
