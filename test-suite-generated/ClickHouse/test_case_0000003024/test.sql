SELECT
    diff,
    traf
FROM order_by_nulls_first
order by diff desc NULLS FIRST, traf
limit 1, 4;
