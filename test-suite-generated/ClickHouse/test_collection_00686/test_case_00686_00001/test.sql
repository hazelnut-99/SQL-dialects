select * from (select * from tab where (a + b) * c = 8 union all select * from tab3 where (a + b) * c = 18) order by sin(a / b);
