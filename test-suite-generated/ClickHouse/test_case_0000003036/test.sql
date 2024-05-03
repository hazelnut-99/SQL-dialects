SELECT
    diff,
    traf
FROM order_by_nulls_first
ORDER BY
    diff DESC NULLS LAST,
    traf DESC;
