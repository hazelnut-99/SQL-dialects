select * from tab2 order by toTimeZone(toTimezone(x, 'UTC'), 'CET'), intDiv(intDiv(y, -2), -3);
