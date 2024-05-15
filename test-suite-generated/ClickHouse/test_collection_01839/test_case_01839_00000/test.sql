SELECT id, intervalLengthSum(start, end), toTypeName(intervalLengthSum(start, end)) FROM interval GROUP BY id ORDER BY id;
