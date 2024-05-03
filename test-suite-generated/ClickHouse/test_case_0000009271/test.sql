select b, length(b) as l from tab_00717 group by b, l, l + 1 order by b;
