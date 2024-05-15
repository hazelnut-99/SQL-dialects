SELECT arrayMap(x -> toString(x), [2, 1, 3]) AS arr, arraySort(arr), arrayReverseSort(arr), arraySort(x -> reverse(x), arr);
