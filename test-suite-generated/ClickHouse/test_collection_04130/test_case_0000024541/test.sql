SELECT [1,2] AS other, arr, round(arrayJaccardIndex(other, arr), 2) FROM array_jaccard_index ORDER BY arr;
