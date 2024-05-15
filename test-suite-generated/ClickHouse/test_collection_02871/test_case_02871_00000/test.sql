SELECT arr, [1,2] AS other, round(arrayJaccardIndex(arr, other), 2) FROM array_jaccard_index ORDER BY arr;
