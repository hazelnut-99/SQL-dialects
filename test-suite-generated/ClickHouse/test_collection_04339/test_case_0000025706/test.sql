SELECT ['ab', 'c', 'de', '', 'hi'] AS arr, 3 AS len, arrayShingles(arr, len), arrayShingles(materialize(arr), len);
