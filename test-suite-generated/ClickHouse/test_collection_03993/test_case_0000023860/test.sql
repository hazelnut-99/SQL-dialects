select quantilesGK(10000, 0.25, 0.5, 0.75, 0.0, 1.0, 0, 1)(number + 1) from numbers(1000);
