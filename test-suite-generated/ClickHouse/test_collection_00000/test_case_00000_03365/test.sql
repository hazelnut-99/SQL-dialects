SELECT formatDateTime(toDateTime('2018-01-01 22:33:44'), '%w'), formatDateTime(toDateTime('2018-01-07 22:33:44'), '%w'),
       formatDateTime(toDate32('2018-01-01'), '%w'), formatDateTime(toDate32('2018-01-07'), '%w');
