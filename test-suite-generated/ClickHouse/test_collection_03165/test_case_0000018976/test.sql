SELECT mapApply((x, y) -> ('x', 'y'), materialize(map(1, 0, 2, 0)));
