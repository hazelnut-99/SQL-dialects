select 
base.id as `base.id`,
derived2.value2 as `derived2.value2`,
derived1.value1 as `derived1.value1`
from test_01600.base as base 
left join test_01600.derived2 as derived2 on base.id2 = derived2.id2
left join test_01600.derived1 as derived1 on base.id = derived1.id1;
