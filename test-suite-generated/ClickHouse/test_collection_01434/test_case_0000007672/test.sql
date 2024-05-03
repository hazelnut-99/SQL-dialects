WITH ['2023-04-05', '2023-04-06']::Array(Date) AS d SELECT arrayMax(d), arrayMin(d), arrayDifference(d);
