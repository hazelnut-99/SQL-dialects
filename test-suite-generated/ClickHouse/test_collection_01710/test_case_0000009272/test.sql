select a, b, length(b) as l from tab_00717 group by a, b, l, l + 1 order by a, b;
