select * from ts order by sensor_id, timestamp with fill to 10 step 1 interpolate (value as 9999);
