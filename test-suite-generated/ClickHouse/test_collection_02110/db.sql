CREATE FUNCTION 02099_lambda_function AS x -> arrayMap(array_element -> array_element * 2, x);
