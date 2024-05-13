DROP TABLE IF EXISTS t_json;
DROP TABLE IF EXISTS t_map;
CREATE TABLE t_map(id UInt64, m Map(String, UInt64)) ENGINE = MergeTree ORDER BY id;
INSERT INTO t_map
SELECT
    number,
    (
        arrayMap(x -> 'col' || toString(x), range(number % 10)),
        range(number % 10)
    )::Map(String, UInt64)
FROM numbers(1000000);
