WITH ['2023-04-05', '2023-04-06']::Array(Date32) AS d SELECT arrayMax(d), arrayMin(d), arrayDifference(d);
