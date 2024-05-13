DROP NAMED COLLECTION IF EXISTS 02918_json_fuzzer;
CREATE NAMED COLLECTION 02918_json_fuzzer AS json_str='{}';
DROP TABLE IF EXISTS 02918_table_str;
CREATE TABLE 02918_table_str (json_str String) Engine=Memory;
INSERT INTO 02918_table_str SELECT * FROM fuzzJSON(02918_json_fuzzer) limit 10;
INSERT INTO 02918_table_str SELECT * FROM fuzzJSON(02918_json_fuzzer) limit 10;
INSERT INTO 02918_table_str SELECT * FROM fuzzJSON(02918_json_fuzzer, random_seed=123, reuse_output=true) limit 10;
INSERT INTO 02918_table_str SELECT * FROM fuzzJSON(
    02918_json_fuzzer,
    json_str='{"name": "John Doe", "age": 30, "address": {"city": "Citiville", "zip": "12345"}, "hobbies": ["reading", "traveling", "coding"]}',
    random_seed=6666) LIMIT 200;
INSERT INTO 02918_table_str SELECT * FROM fuzzJSON(
    02918_json_fuzzer,
    json_str='{"name": "John Doe", "age": 30, "address": {"city": "Citiville", "zip": "12345"}, "hobbies": ["reading", "traveling", "coding"]}',
    random_seed=6666,
    min_key_length=1,
    max_key_length=5) LIMIT 200;
INSERT INTO 02918_table_str SELECT * FROM fuzzJSON(
    02918_json_fuzzer,
    json_str='{"name": "John Doe", "age": 30, "address": {"city": "Citiville", "zip": "12345"}, "hobbies": ["reading", "traveling", "coding"]}',
    max_nesting_level=128,
    reuse_output=true,
    random_seed=6666,
    min_key_length=5,
    max_key_length=5) LIMIT 200;
INSERT INTO 02918_table_str SELECT * FROM fuzzJSON(
    02918_json_fuzzer,
    json_str='{"name": "John Doe", "age": 30, "address": {"city": "Citiville", "zip": "12345"}, "hobbies": ["reading", "traveling", "coding"]}',
    random_seed=6666,
    reuse_output=1,
    probability=0.5,
    max_output_length=65536,
    max_nesting_level=18446744073709551615,
    max_array_size=18446744073709551615,
    max_object_size=18446744073709551615,
    max_key_length=65536,
    max_string_value_length=65536) LIMIT 100;
