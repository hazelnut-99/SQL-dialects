select * from (select *, a + b as x from tab) order by x * c;
