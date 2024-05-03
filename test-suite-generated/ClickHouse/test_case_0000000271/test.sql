WITH
    toDateTime('2021-04-14 11:22:33') AS date_time_value,
    toDateTime64('2021-04-14 11:22:33', 3) AS date_time_64_value
SELECT dateName('minute', date_time_value), dateName('minute', date_time_64_value);
