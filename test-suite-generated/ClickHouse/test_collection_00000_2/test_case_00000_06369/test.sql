SELECT * FROM numbers(1) LEFT ARRAY JOIN arrayFilter((x_0, x_1) -> (arrayJoin([]) IN (NULL)), [], []) AS arr_x;
