select toDate(time, 'UTC') dt, min(toDateTime(time, 'UTC')), max(toDateTime(time, 'UTC')), sum(count) from bad_date_time where toDate(time, 'UTC') = '2020-12-19' group by dt;
