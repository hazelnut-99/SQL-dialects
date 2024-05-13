select
    function_name as raw,
    replace(raw, '_', ' ') as prettier
from my_functions
group by all;
