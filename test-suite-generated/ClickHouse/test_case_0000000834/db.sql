CREATE TABLE nested_name_tuples
(
    `a` Tuple(x String, y Tuple(i Int32, j String))
)
ENGINE = Memory;
INSERT INTO nested_name_tuples VALUES(('asd', (12, 'ddd')));
