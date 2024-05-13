SELECT formatDateTime(toDateTime('1996-01-01 22:33:44'), '%V'), formatDateTime(toDateTime('1996-12-31 22:33:44'), '%V'),
       formatDateTime(toDateTime('1999-01-01 22:33:44'), '%V'), formatDateTime(toDateTime('1999-12-31 22:33:44'), '%V'),
       formatDateTime(toDate32('1996-01-01'), '%V'), formatDateTime(toDate32('1996-12-31'), '%V'),
       formatDateTime(toDate32('1999-01-01'), '%V'), formatDateTime(toDate32('1999-12-31'), '%V');
