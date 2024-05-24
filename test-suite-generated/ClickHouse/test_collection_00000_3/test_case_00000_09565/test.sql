SELECT n, any(source), sum(inter) AS inter_s FROM (
    SELECT toFloat32(number % 10) AS n, 'original' AS source, number AS inter FROM numbers(10) WHERE (number % 3) = 1
) GROUP BY n
ORDER BY n ASC WITH FILL FROM 0 TO 11.51 STEP 0.5 INTERPOLATE ( inter_s AS inter_s + 1 );
