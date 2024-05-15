select x, y
from (
  (values (1), (2)) as t1 (a)
  cross join
  (values (3), (4)) as t2 (b)
) as t(x, y);
