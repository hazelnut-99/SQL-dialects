CREATE FUNCTION 02103_test_function AS x -> x + 1;
CREATE FUNCTION 02103_test_function_with_nested_function_empty_args AS () -> 02103_test_function(1);
CREATE FUNCTION 02103_test_function_with_nested_function_arg AS (x) -> 02103_test_function(x);
