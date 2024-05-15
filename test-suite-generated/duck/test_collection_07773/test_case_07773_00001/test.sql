select 
  x, y, 
  count(*) over (partition by y order by x), 
  count(*) over (w order by x)
from (values (1, 1), (2, 1), (3, 2), (4, 2)) as t (x, y)
window w as (partition by y)
order by x;
