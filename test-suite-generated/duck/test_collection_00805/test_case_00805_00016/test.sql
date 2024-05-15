select x, count(*) as c
from ((select * from (values(1),(2),(2),(3),(3),(3),(4),(4),(4),(4)) s(x) except all select * from (values(1),(3),(3)) t(x)) intersect all select * from (values(2),(2),(2),(4),(3),(3)) u(x)) s
group by x order by x;
