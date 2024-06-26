SELECT toString(T.d) dateStr
FROM
    (
    SELECT '1900-01-01'::Date32 d
    UNION ALL SELECT '1969-12-31'::Date32
    UNION ALL SELECT '1970-01-01'::Date32
    UNION ALL SELECT '2149-06-06'::Date32
    UNION ALL SELECT '2149-06-07'::Date32
    UNION ALL SELECT '2299-12-31'::Date32
    ) AS T
ORDER BY T.d
