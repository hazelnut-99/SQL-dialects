SELECT arrayMap(x -> range(x), materialize([2, 1, 3])) AS arr, arraySort(arr), arrayReverseSort(arr), arraySort(x -> -length(x), arr);
