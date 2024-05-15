select a1, a2, b1, b2 from tab1 first any left join (select * from tab2) second_ on first.b1 = second_.a2;
