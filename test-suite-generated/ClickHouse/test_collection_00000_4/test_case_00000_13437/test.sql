SELECT ['ab', 'c', 'de', '', 'hi'] AS arr, 1 AS len, arrayShingles(arr, len), arrayShingles(materialize(arr), len);
