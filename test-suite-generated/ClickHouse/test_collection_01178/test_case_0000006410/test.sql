select runningDifference(x) from (select arrayJoin([Null, Null, toDate('1970-1-1'), toDate('1970-12-31'), Null, Null,  toDate('2010-8-9')]) as x);
