SELECT id, 3.4 < intervalLengthSum(start, end) AND intervalLengthSum(start, end) < 3.6, toTypeName(intervalLengthSum(start, end)) FROM fl_interval GROUP BY id ORDER BY id;
