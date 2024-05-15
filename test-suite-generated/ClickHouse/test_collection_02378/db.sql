DROP TABLE IF EXISTS ipv4_test;
CREATE TABLE ipv4_test
(
    id UInt64,
    value String
) ENGINE=MergeTree ORDER BY id;
DETACH TABLE ipv4_test;
ATTACH TABLE ipv4_test;
DROP TABLE ipv4_test;
DROP TABLE IF EXISTS ipv6_test;
CREATE TABLE ipv6_test
(
    id UInt64,
    value String
) ENGINE=MergeTree ORDER BY id;
DETACH TABLE ipv6_test;
ATTACH TABLE ipv6_test;
