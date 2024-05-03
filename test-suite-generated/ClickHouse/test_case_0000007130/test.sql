select [] as arr, multiIf(empty(arr), 0, length(arr) > 1, arr[-1], 0);
