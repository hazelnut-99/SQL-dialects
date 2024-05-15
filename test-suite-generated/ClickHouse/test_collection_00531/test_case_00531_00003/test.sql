SELECT
    bitmapCardinality(day_today) AS today_users,
    bitmapCardinality(day_before) AS before_users,
    bitmapOrCardinality(day_today, day_before) AS all_users,
    bitmapAndCardinality(day_today, day_before) AS old_users,
    bitmapAndnotCardinality(day_today, day_before) AS new_users,
    bitmapXorCardinality(day_today, day_before) AS diff_users
FROM
(
 SELECT city_id, groupBitmapState( uid ) AS day_today FROM bitmap_test WHERE pickup_date = '2019-01-02' GROUP BY city_id ORDER BY city_id
) js1
ALL LEFT JOIN
(
 SELECT city_id, groupBitmapState( uid ) AS day_before FROM bitmap_test WHERE pickup_date = '2019-01-01' GROUP BY city_id ORDER BY city_id
) js2
USING city_id;
