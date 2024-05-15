SELECT 0 as nelems, [NULL,9,4,8,10,5,2,3,7,1,6] AS arr, arrayPartialSort(nelems, arr), arrayPartialReverseSort(nelems, arr), arrayPartialSort((x) -> -x, nelems, arr);
