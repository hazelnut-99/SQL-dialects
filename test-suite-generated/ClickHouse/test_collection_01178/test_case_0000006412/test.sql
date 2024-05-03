select runningDifference(x) from (select arrayJoin([Null, Null, toDate32('1900-1-1'), toDate32('1930-5-25'), toDate('1990-9-4'), Null,  toDate32('2279-5-4')]) as x);
