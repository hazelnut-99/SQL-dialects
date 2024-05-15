select lhs.*, rhs.*
from list_int lhs, list_int rhs
where lhs.i2 = rhs.i2 and lhs.l3 >= rhs.l3
order by lhs.i, rhs.i;
