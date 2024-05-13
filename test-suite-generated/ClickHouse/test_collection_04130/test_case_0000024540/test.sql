SELECT arr, [] AS other, round(arrayJaccardIndex(arr, other), 2) FROM array_jaccard_index ORDER BY arr;
