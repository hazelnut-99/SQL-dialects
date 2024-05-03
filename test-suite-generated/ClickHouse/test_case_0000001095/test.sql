WITH
    toDate('2021-08-14') AS date_value,
    toDateTime('2021-08-14 11:22:33') AS date_time_value,
    toDateTime64('2021-08-14 11:22:33', 3) AS date_time_64_value
SELECT monthName(date_value), monthName(date_time_value), monthName(date_time_64_value);
