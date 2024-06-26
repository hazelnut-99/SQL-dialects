DROP TABLE IF EXISTS join_any_inner;
DROP TABLE IF EXISTS join_any_left;
DROP TABLE IF EXISTS join_any_left_null;
DROP TABLE IF EXISTS join_all_inner;
DROP TABLE IF EXISTS join_all_left;
DROP TABLE IF EXISTS join_string_key;
CREATE TABLE join_any_inner (s String, x Array(UInt8), k UInt64) ENGINE = Join(ANY, INNER, k);
CREATE TABLE join_any_left (s String, x Array(UInt8), k UInt64) ENGINE = Join(ANY, LEFT, k);
CREATE TABLE join_all_inner (s String, x Array(UInt8), k UInt64) ENGINE = Join(ALL, INNER, k);
CREATE TABLE join_all_left (s String, x Array(UInt8), k UInt64) ENGINE = Join(ALL, LEFT, k);
INSERT INTO join_any_inner VALUES ('abc', [0], 1), ('def', [1, 2], 2);
INSERT INTO join_any_left VALUES ('abc', [0], 1), ('def', [1, 2], 2);
INSERT INTO join_all_inner VALUES ('abc', [0], 1), ('def', [1, 2], 2);
INSERT INTO join_all_left VALUES ('abc', [0], 1), ('def', [1, 2], 2);
