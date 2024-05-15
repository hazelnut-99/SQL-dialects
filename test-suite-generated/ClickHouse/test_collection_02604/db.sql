DROP TABLE IF EXISTS arrays_test;
CREATE TABLE arrays_test
(
    s String,
    arr1 Array(UInt8),
    map1 Map(UInt8, String),
    map2 Map(UInt8, String)
) ENGINE = Memory;
INSERT INTO arrays_test
VALUES ('Hello', [1,2], map(1, '1', 2, '2'), map(1, '1')), ('World', [3,4,5], map(3, '3', 4, '4', 5, '5'), map(3, '3', 4, '4')), ('Goodbye', [], map(), map());
