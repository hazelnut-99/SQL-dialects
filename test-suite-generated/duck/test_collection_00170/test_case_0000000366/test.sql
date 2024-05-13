select function_name, parameters, macro_definition
from duckdb_functions()
where function_name like 'zz%'
and macro_definition like '%macro_parameters%';
