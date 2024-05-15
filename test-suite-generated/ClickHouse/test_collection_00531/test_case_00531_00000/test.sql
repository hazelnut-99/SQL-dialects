SELECT pickup_date, groupBitmapMerge(uv) AS users from bitmap_state_test group by pickup_date order by pickup_date;
