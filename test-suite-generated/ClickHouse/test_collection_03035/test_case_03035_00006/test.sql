select * from (select * from tab union all select * from tab5 union all select * from tab4) order by (a + b) * c, sin(a / b), d limit 3;
