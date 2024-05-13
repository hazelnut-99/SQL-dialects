select tab1.a1, a2, tab1.b1, second_.b2 from tab1 first any left join (select * from tab2) second_ on first.b1 = second_.a2;
