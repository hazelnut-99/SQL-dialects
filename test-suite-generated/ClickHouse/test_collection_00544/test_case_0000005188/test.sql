select max(key) from tab_00612 any left join (select key, arrayJoin(n.x) as val from tab_00612) js2 using key where (key, val) in (1, 1);
