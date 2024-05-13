SELECT something, count_a, count_b, toTypeName(something) FROM
    ( SELECT something, count() AS count_a FROM table_a GROUP BY something ) as s1
ALL FULL JOIN
    ( SELECT something, count() AS count_b FROM table_b GROUP BY something ) as s2
ON s1.something = s2.something
ORDER BY count_a DESC, something DESC;
