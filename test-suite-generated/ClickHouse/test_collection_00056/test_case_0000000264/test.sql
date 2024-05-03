WITH
    toDate('2021-04-14') AS date_value,
    toDate32('2021-04-14') AS date_32_value,
    toDateTime('2021-04-14 11:22:33') AS date_time_value,
    toDateTime64('2021-04-14 11:22:33', 3) AS date_time_64_value
SELECT dateName('quarter', date_value), dateName('quarter', date_32_value), dateName('quarter', date_time_value), dateName('quarter', date_time_64_value);
