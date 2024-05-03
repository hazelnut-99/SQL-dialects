create view test_param_view as
with {param_test_val:UInt8} as param_test_val
select param_test_val,
       arrayCount((a)->(a < param_test_val), t.arr) as cnt1
from (select [1,2,3,4,5] as arr) t;
