select runningDifference(x) from (select arrayJoin([0, 1, 5, 10, 170141183460469231731687303715884105728]::Array(UInt256)) as x);
