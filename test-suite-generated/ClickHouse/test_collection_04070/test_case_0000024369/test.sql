SELECT id, arrayDotProduct([5, 2, 2, 3, 5, 1, 2, 3, 5, 1, 2, 3, 5, 1, 2, 3, 5, 1, 2]::Array(UInt32), vec) FROM tab ORDER BY id;
