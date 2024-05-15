SELECT sparkbar(8, 0, 7)((number + 1) % 8, 1), sparkbar(8, 0, 7)((number + 2) % 8, 1), sparkbar(8, 0, 7)((number + 3) % 8, 1) FROM numbers(7);
