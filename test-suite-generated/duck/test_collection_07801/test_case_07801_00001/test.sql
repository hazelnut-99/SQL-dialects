select
   list(row_number) over(rows between unbounded preceding and current row)
from generate_series(5000) t(row_number);
