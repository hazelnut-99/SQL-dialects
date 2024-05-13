SELECT s1.other, s2.other, count_a, count_b, toTypeName(s1.other), toTypeName(s2.other) FROM
    ( SELECT other, count() AS count_a FROM table_a GROUP BY other ) s1
ALL FULL JOIN
    ( SELECT other, count() AS count_b FROM table_b GROUP BY other ) s2
ON s1.other = s2.other
ORDER BY s2.other DESC, count_a, s1.other;
