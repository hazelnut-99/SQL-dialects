select cast(1 as String)
from (select 1 as iid) as t1
join (select '1' as sid) as t2 on t2.sid = cast(t1.iid as String);
