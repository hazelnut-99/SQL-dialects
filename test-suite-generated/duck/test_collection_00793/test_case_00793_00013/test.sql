select MIN(t2.b) from (SELECT * FROM a UNION ALL SELECT * FROM b) t1 join (select 43, 'hello', 44, 'world') t2(l, a, b, c) on t1.l=t2.l;
