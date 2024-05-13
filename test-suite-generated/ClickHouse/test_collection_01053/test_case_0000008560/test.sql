select * from (select * from tab where (a + b) * c = 8 union all select * from tab4) order by sin(a / b);
