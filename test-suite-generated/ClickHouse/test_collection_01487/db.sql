drop table if exists t_01568;
create table t_01568 engine Memory as
select intDiv(number, 3) p, modulo(number, 3) o, number
from numbers(9);
