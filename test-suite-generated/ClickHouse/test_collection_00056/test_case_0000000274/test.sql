WITH
    toDateTime('2021-04-14 23:22:33', 'UTC') as date
SELECT
    dateName('weekday', date, 'Asia/Istanbul'),
    dateName('hour', date, 'Asia/Istanbul'),
    dateName('minute', date, 'Asia/Istanbul'),
    dateName('second', date, 'Asia/Istanbul');
