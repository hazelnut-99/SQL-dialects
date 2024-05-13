SELECT schema_name, function_name, function_type, description, return_type, parameters, parameter_types, varargs, macro_definition FROM duckdb_functions() WHERE function_type = 'table_macro' AND
 ( function_name = 'sgreek' or  function_name = 'xt') order by function_name;
