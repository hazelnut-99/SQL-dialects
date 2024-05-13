SELECT
    diff,
    traf
FROM order_by_nulls_first
ORDER BY
    diff ASC NULLS FIRST,
    traf ASC;
