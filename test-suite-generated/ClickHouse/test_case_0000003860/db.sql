DROP TABLE IF EXISTS visits1;
CREATE TABLE visits1
(
    Sign Int8,
    Arr Array(Int8),
    `ParsedParams.Key1` Array(String),
    `ParsedParams.Key2` Array(String),
    CounterID UInt32
) ENGINE = Memory;
DROP TABLE visits1;
