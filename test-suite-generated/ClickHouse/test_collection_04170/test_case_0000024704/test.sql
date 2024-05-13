SELECT
    pt AS pt,
    exposure_uv AS exposure_uv
FROM
(
    SELECT
        pt
    FROM test1
) AS m0
FULL OUTER JOIN
(
    SELECT
        pt,
        exposure_uv
    FROM test1
) AS m1 ON m0.pt = m1.pt;
