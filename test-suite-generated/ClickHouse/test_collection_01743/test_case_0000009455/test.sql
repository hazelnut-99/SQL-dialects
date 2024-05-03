SELECT
    tuple(NULL) < tuple(1),
    tuple(NULL) = tuple(1),
    tuple(NULL) <= tuple(1),
    tuple(1, NULL) = tuple(2, 1),
    tuple(1, NULL) < tuple(2, 1);
