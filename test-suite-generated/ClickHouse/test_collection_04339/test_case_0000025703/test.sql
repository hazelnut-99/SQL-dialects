SELECT [1, 2, 3, 4, 5] AS arr, 3 AS len, arrayShingles(arr, len), arrayShingles(materialize(arr), len);
