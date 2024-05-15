select * from (select *, a + b as x, a / b as y from tab) order by x * c, sin(y);
