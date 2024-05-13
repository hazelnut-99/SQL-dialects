SELECT n, source, inter FROM (
   SELECT toFloat32(number % 10) AS n, 'original' AS source, number as inter FROM numbers(10) WHERE number % 3 = 1
) ORDER BY n WITH FILL FROM 0 TO 11.51 STEP 0.5 INTERPOLATE (inter AS 42);
