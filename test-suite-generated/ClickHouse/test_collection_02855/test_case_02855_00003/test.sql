select * from ts order by sensor_id DESC, timestamp with fill from 6 step 1 interpolate (value as 9999);
