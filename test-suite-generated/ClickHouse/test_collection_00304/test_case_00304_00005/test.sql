select key, arrayJoin(n.x) as val from tab_00612 where (key, val) in ((1, 1), (2, 2)) order by key;
