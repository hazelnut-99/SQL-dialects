SELECT n, source, inter + 1 AS inter_p FROM (
    SELECT toFloat32(number % 10) AS n, 'original' AS source, number AS inter FROM numbers(10) WHERE (number % 3) = 1
) ORDER BY n ASC WITH FILL FROM 0 TO 11.51 STEP 0.5 INTERPOLATE ( inter_p AS inter_p + 1 );
