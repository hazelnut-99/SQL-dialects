select COUNT(*) from (SELECT * FROM a UNION ALL SELECT * FROM b) t1 join (select 43) t2(l) on t1.l=t2.l;
