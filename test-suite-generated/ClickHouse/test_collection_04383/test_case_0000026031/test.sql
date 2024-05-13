select * from (select * from tab union all select * from tab3) order by (a + b) * c, sin(a / b);
