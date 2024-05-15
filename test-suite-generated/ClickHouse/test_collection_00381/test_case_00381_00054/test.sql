select a1, a2, b1, b2 from tab1 first any left join (select *, a2 + 1 as z from tab2) second_ on first.b1 + 1 = second_.z;
