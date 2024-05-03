SELECT
    argMax(col1, timestamp) AS col1,
    argMax(col2, timestamp) AS col2,
    col1 / col2 AS final_col
FROM ttttttt
GROUP BY
    col3
ORDER BY final_col DESC;
