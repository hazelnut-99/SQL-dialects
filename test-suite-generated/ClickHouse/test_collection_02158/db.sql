DROP FUNCTION IF EXISTS 02148_test_function;
CREATE FUNCTION 02148_test_function AS () -> (SELECT 1);
CREATE OR REPLACE FUNCTION 02148_test_function AS () -> (SELECT 2);
DROP FUNCTION 02148_test_function;
CREATE FUNCTION 02148_test_function AS (x) -> (SELECT x + 1);
DROP FUNCTION IF EXISTS 02148_test_function_nested;
CREATE FUNCTION 02148_test_function_nested AS (x) -> 02148_test_function(x + 2);
