select count() as c, x in ('a', 'bb') as g from tab group by g order by c;
