select * from sj p
where exists (select * from sj q
              where q.a = p.a and q.b < 10);
