select j, s, list(s) over (partition by j order by s) 
from list_combine_test 
order by j, s;
