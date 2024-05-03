WITH
    toDateTime('2021-04-14 23:22:33', 'UTC') as date
SELECT
    dateName('weekday', date, 'UTC'),
    dateName('hour', date, 'UTC'),
    dateName('minute', date, 'UTC'),
    dateName('second', date, 'UTC');
