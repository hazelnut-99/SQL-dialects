SELECT
    1 IN (1, -1, 2.0, 2.5), 
    1.0 IN (1, -1, 2.0, 2.5), 
    1 IN (1.0, -1, 2.0, 2.5),
    1.0 IN (1.0, -1, 2.0, 2.5),
    1 IN (1.1, -1, 2.0, 2.5),
    -1 IN (1, -1, 2.0, 2.5);
