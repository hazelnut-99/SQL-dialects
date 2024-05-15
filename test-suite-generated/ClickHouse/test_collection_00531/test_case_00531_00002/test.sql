SELECT pickup_date, groupBitmap( uid ) AS user_num, bitmapToArray(groupBitmapState( uid )) AS users FROM bitmap_test GROUP BY pickup_date order by pickup_date;
