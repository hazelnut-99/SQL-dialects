DROP TABLE IF EXISTS 02919_test_table_noarg;
CREATE TABLE 02919_test_table_noarg(str String) ENGINE = FuzzJSON('{}');
DROP TABLE IF EXISTS 02919_test_table_noarg;
DROP TABLE IF EXISTS 02919_test_table_valid_args;
CREATE TABLE 02919_test_table_valid_args(str String) ENGINE = FuzzJSON(
    '{"pet":"rat"}', NULL);
